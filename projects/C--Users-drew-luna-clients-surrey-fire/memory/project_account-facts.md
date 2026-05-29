---
name: Surrey Fire — Google Ads Account Facts
description: Key account IDs, campaign structure, targeting, and technical details for Surrey Fire & Safety Ltd
type: project
originSessionId: 4fa06a1f-190e-43cf-a698-12cc6793ba70
---
## Account IDs
- Customer ID: 7742356302
- Login Customer ID (MCC): 2284398748

## Data Access
- **Dev token in `config/.env` is TEST-ONLY** — cannot query the production Surrey Fire account
- **Always use Google Ads MCP** (`mcp__google-ads__google-ads-download-report`) for all data pulls
- The batch runner (`scripts/run-all.js`) will fail — use MCP as the replacement

**Why:** The developer token registered in config/.env has test account access only. Surrey Fire is a real production account. MCP has separate user-scoped OAuth with full production access.

**How to apply:** Any time a gads-context or data pull is needed, skip the batch runner entirely and use MCP directly. Pass `customerId: 7742356302, loginCustomerId: 2284398748` on every call.

## Campaign Structure (as of 2026-04-22)
6 active campaigns:
- **Fire Extinguishers Installation [Consolidated]** — Search, Manual CPC, desktop-only
- **Fire Extinguishers Servicing [Consolidated]** — Search, Manual CPC, desktop-only
- **Surrey Fire - Fire Alarms** — Search, Manual CPC, desktop-only
- **Buy Fire Extinguishers** — Search, Manual CPC, desktop-only
- **Wireless Fire Alarms** — Search, Manual CPC, desktop-only
- **Wireless Fire Alarms - PMax** — Performance Max (only campaign with mobile traffic)

## Device Targeting
**Client requirement: ALL PPC activity must be desktop only.**
All 5 Search campaigns are DESKTOP ONLY (-100% bid adjustment on mobile/tablet).
PMax is the exception — device control is limited in PMax; apply -100% mobile/tablet bid adjustments where the platform allows.
Any new campaigns (including brand campaign) must also be set to desktop only from launch.

## Geo Targeting
Key geo constants used:
- 9041123 = London (Greater London)
- 9041092 = Berkshire
- 9045946 = Hammersmith area
- 100% UK traffic (country 2826)

## Shared Negatives
- List name: "Common Negatives" (ID: 8712683014)
- Linked to all active + paused campaigns
- 27 negatives including: free, sign, download, car, http, how, vintage, signage, truck, antique, pdf, van, bus, used, which, old, questionnaire, what, legislation, regulation, ppt, hgv, log burner, firas, in terms, safe i s ltd

## Conversion Actions (all ENABLED, all primary_for_goal=True)
1. Call Conv (Website)
2. Calls from ads
3. Contact Form Submit
4. Phone Call
5. Phone Number Click

## No Brand Campaign
No branded search campaign is active. `brandedCampaigns: []` in config.

## No Shopping
No Shopping campaigns. Shopping CSVs are all header-only.
