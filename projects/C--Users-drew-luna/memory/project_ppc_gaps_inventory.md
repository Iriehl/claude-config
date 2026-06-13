---
name: project-ppc-gaps-inventory
description: "Full inventory of PPC tasks - what's being done vs known gaps. Reference before any account strategy session."
metadata: 
  node_type: memory
  type: project
  originSessionId: f7aaf108-752b-4143-8b12-6338a0124ed4
---

Compiled 2026-05-31 from session audit + interview. Drew is self-taught with no agency background.

**Why:** Many whole task categories were not in the workflow. This is the reference for "what should we be doing that we're not."

**How to apply:** Before any strategy or planning session, check this list for relevant gaps.

## Currently Doing

- Keyword audits (QS, match type, duplicates)
- Search term review + negative adds
- Placement exclusions (brand safety)
- Budget pacing
- Bidding strategy audits
- Account changelog review
- RSA creation
- Negative keyword management (shared lists)
- Geo/schedule/device bid adjustments
- PMax asset refresh
- Customer Match (partial - overdue for Allure)
- RLSA (Surrey Fire - 29 segments)
- Conversion tracking audits
- Enhanced conversions
- Monthly HTML reports
- Surrey Fire Microsoft Ads (manual)

## Key Gaps (Priority Order)

1. **Auction Insights** - monthly pull, add to every monthly report (confirmed missing)
2. **Seasonality adjustments** - 2-min setup before any Allure/Misona sale event; prevents Smart Bidding from panicking during spikes. Location: Google Ads UI > Tools > Bid Strategies > Seasonality Adjustments
3. **Shopping custom labels** - margin-tier segmentation via supplemental feed. Different tROAS targets per tier. See [[project-shopify-mcp]] for supplemental feed workflow.
4. **Merchant promotions (GMC)** - "10% off" badge on Shopping ads. Set in GMC promotion feed, not Google Ads. High CTR lift during sales.
5. **Conversion delay / time lag** - pull via Attribution > Time Lag in UI or GAQL. Must know lag before evaluating any campaign change. Add to business.md per client.
6. **LinkedIn targeting (MADS)** - Surrey Fire B2B (facilities managers). Only platform that can target by job title. Bid modifier +20-30% on existing campaigns or dedicated Audience Network campaigns.
7. **Dynamic remarketing** - product-level remarketing to browsers/cart abandoners. Requires GMC feed linked to GTM remarketing tag. Allure + Misona.
8. **Value rules** - multiplier on conversion values by audience. Supports Allure 80/20 NCA ("new customers worth 1.5x").
9. **Supplemental feeds** - override product titles/custom labels without client involvement. See plan for workflow.
10. **Disapproved ads check** - silent disapprovals after edits. Add to weekly audit.

## Confirmed Lower Priority

- GA4 API (Google Ads is source of truth)
- Looker Studio dashboards (clients not asking for mid-month visibility yet)
- Google Ads Scripts alerting (manual audit covers it for now)
- Store visit conversions (Surrey Fire - investigate if they have a showroom)
