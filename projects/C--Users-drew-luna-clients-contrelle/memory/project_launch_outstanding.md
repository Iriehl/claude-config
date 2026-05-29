---
name: Contrelle pre-launch outstanding items — as of 2026-04-14
description: Items still outstanding after 2026-04-14 session; PMax built and paused, callouts and GA4 audiences pending
type: project
originSessionId: 15b232f0-644c-4300-952b-ebbf0f896806
---

Status as of end of 2026-04-14 session 2.

## PMax — Built and Paused (1 May 2026 start date)

Campaign is live in the account but paused. Import reference: created/pmax/contrelle-pmax-upload-2026-04-14.csv

Outstanding before go-live:
- Replace 20 placeholder images with higher-res versions when Kate provides them
- Update budget from £50/day to ~£65/day (£2,000/mo) on go-live
- Check GA4 audience signal population in 48hrs (Checkout Starters, Basket Abandoners, Purchasers all at 0 members)
- PMax search theme exemption pending Google review (health in personalised advertising category)

## Callouts — Still Need Applying

New 2026 callouts (10 total): Clinically Proven, Trusted in 20+ Countries, No Surgery Required, No Pads Needed, Works From First Use, 7 Million Devices Sold, Physio-Recommended, Prevents Leaks. Not Pads., Comfortable & Discreet, Worn Up to 16 Hours

Need adding to:
- Account level (alongside existing 2022 callouts - keep those, historical data)
- PMax campaign level
- Demand Gen campaign level

Brand and Search campaigns already have them applied.

## GA4 Audiences (created 2026-04-14)

Created 3 new segments: Checkout Starters, Basket Abandoners, Purchasers. All at 0 members - will backfill 24-48hrs.

Original GA4 All Users and Purchasers segments cannot sync to Google Ads. Root cause: ad_storage INACTIVE in Complianz Consent Mode v2. Blocked until Jen connects Complianz GTM integration.

Once populated: add all 3 as audience signals in PMax asset group.

## Negative Keyword Lists (audited 2026-04-14)

All campaign associations reviewed and cleaned. Key changes:
- Demand Gen confirmed: cannot accept shared negative keyword lists (UI blocks it)
- Contrelle 2026 Search: removed free, review, reviews, side effects (were blocking high-intent terms)
- Contrelle 2026 Devices Ad Group: agreed to delete (redundant list, no value) - Drew to do in UI

## Dev Outstanding (brief sent to Jen)

- Remove hardcoded AW tag + GA4 tag from both sites
- Fix subscription item prices in dataLayer: 5 Pack 14.39 -> 15.99; 30 Pack 71.09 -> 78.99
- Complianz: connect Consent Mode v2 to GTM (CRITICAL - ad_storage inactive blocks GA4 audiences)
- XML feed: build and host
- 301 redirects /shop/ -> /product/
- Confirm single GTM instance on new site
- Remove Mailchimp WooCommerce plugin (conflicts with purchase tracking)

## Go-Live Day Tasks

- Audit every ad, sitelink and asset URL across all campaigns
- QA GTM purchase tags in production (all 3 SKUs, correct values)
- Switch Brand + Search to Sizing Kit Acquisition custom goal
- Register new XML feed in GMC, assign label GB, deprecate Sheets feed
- Update PMax budget to ~£65/day
