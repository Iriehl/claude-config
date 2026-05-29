---
name: Bing PMax campaign fix — Microsoft Advertising API
description: Plan to fix missing PMax campaign data in Bing budget tracker using Google Apps Script + Microsoft Advertising API OAuth
type: project
originSessionId: c04f095a-a03e-4b8a-bf56-6df0e403d6d3
---
RESOLVED 2026-04-20. Microsoft Ads Scripts does support PMax via AdsApp.performanceMaxCampaigns() — the original script was using Google Ads API syntax (AdsApp.report(), getStatsFor()) which don't exist in Microsoft Ads Scripts.

**Working solution:**
- Microsoft Ads Script using AdsApp.campaigns(), AdsApp.shoppingCampaigns(), AdsApp.performanceMaxCampaigns() with forDateRange() + getStats().getCost()
- Webhook to bing-receiver.gs unchanged
- All campaign types including PMax confirmed working
- Manual entry for Surrey Fire PMax no longer needed
- Schedule: daily 01:00

**Spreadsheet ID:** 1PVzVpI35a0Hnd6KDAws58OuYYyy1GF4iR7HbGpPNzDQ
**Surrey Fire Microsoft Ads account ID:** B0206GH2
