---
name: mads-context Skill — Microsoft Ads SOAP Data Pull
description: How the mads-context skill works, SOAP API quirks, column name gotchas, and current column coverage including IS metrics
type: project
originSessionId: a28177e9-65be-46dd-ae6a-9c790e30c152
---
## What It Does

Pulls 7 Microsoft Ads reports via SOAP Reporting API v13 into `context/microsoft-ads/data/*.csv`:
- `campaigns.csv` — CampaignPerformanceReport
- `adgroups.csv` — AdGroupPerformanceReport
- `keywords.csv` — KeywordPerformanceReport
- `ads.csv` — AdPerformanceReport
- `search-terms.csv` — SearchQueryPerformanceReport
- `device-performance.csv` — CampaignPerformanceReport (with DeviceType column)
- `geo-user-location.csv` — UserLocationPerformanceReport

Trigger: `/mads-context [--days N]` or `node query.js --start=YYYY-MM-DD --end=YYYY-MM-DD` for exact date ranges

Scripts: `.claude/skills/mads-context/scripts/` — `run-all.js` (batch), `query.js` (single report)

## SOAP API Details

**Endpoint (CRITICAL — lowercase v13):**
`https://reporting.api.bingads.microsoft.com/Api/Advertiser/Reporting/v13/ReportingService.svc`

**Flow:** SubmitGenerateReport → poll PollGenerateReport → download ZIP from Azure Blob → extract CSV

**SOAPAction values:** Short form only — `SubmitGenerateReport` and `PollGenerateReport` (not full URI)

**Download URL fix:** XML responses encode `&` as `&amp;` in URLs. Must `.replace(/&amp;/g, '&')` before downloading.

## Column Name Gotchas

Columns that do NOT exist in Microsoft Ads SOAP v13 (will cause DeserializationFailed):
- `BiddingScheme` — not a valid CampaignPerformanceReportColumn
- `DailySpendingLimit` — not a valid CampaignPerformanceReportColumn
- `AdGroupStatus` — not a valid AdGroupPerformanceReportColumn
- `MatchType` — not valid in KeywordPerformanceReport or SearchQueryPerformanceReport
- `DeviceOsPerformanceReportRequest` — **this report type does not exist in v13**

**Device report workaround:** Use `CampaignPerformanceReportRequest` + `DeviceType` column. The report type key in REPORT_CONFIGS is `DevicePerformanceReport` but maps to `requestType: 'CampaignPerformanceReportRequest'`.

## Campaign Report Columns — IS Metrics (added 2026-04-24)

`campaigns.csv` now includes impression share columns — added to `CampaignPerformanceReport` in `query.js`:
- `ImpressionSharePercent`
- `ImpressionLostToBudgetPercent`
- `ImpressionLostToRankAggPercent`
- `ClickSharePercent`
- `AbsoluteTopImpressionRatePercent`
- `TopImpressionRatePercent`

All 6 confirmed working. Note: `AbsoluteTopImpressionRatePercent` and `TopImpressionRatePercent` return blank for PMax campaigns — expected, those metrics don't apply to PMax.

Source for column names: `C:\Ometry\Microsoft Ads Headings.xlsx` — 64-column reference of all Microsoft Ads editor export fields. Use this file when adding columns to any report type.

## Date Range Override (added 2026-04-25)

`query.js` was modified to support exact date ranges alongside the existing `--days` flag:

```js
// Added after existing args parsing:
const startArg = args['start'];
const endArg = args['end'];

// Added helper after calculateDates():
function parseDateArg(str) {
  const [year, month, day] = str.split('-').map(Number);
  return { day, month, year };
}

// Changed dateRange computation in run():
const dateRange = (startArg && endArg)
  ? { start: parseDateArg(startArg), end: parseDateArg(endArg) }
  : calculateDates(days);
```

Usage: `node query.js --report=campaigns --start=2026-01-01 --end=2026-01-31 --output=campaigns-jan.csv`

This enables pulling historical month ranges — needed because `--days` is always relative to today.

## OAuth / Auth Notes

- Uses refresh_token grant to get access token at runtime
- Refresh token expires after ~90 days of inactivity
- Token endpoint: `https://login.microsoftonline.com/common/oauth2/v2.0/token`
- See `project_microsoft_ads_setup.md` for full re-auth steps

## Adding This Skill to Another Client

1. Copy the 6 `MICROSOFT_ADS_*` env vars to new client's `config/.env` — only change `MICROSOFT_ADS_CLIENT_ACCOUNT_ID`
2. Update `config/ads-context.config.json` with the new client's `microsoftAds` block
3. Run `cd .claude/skills/mads-context/scripts && npm install` (first run only — installs adm-zip + dotenv)
4. Test: `node .claude/skills/mads-context/scripts/run-all.js --days=7`
