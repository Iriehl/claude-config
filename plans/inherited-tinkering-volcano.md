# Plan: Align All Campaigns to Sizing Kit / New Customer Acquisition

## Context
The client's sole goal is new customer acquisition via Sizing Kit (£8.99) purchases. All campaigns should optimise exclusively for this. Currently the account has a single "Checkout" conversion action covering all 3 SKUs — meaning PMax and Shopping are optimising for a mix of new and returning customer purchases. Per-SKU GTM tags exist (v01sp, v01p5, v01p30) but appear to all feed into the single Checkout action. This plan separates Sizing Kit as the primary conversion, restructures PMax/Shopping to serve only the Sizing Kit SKU, aligns all other touchpoints, and documents the new rule in business.md.

---

## Phase 1: Conversion Action Audit & Reassignment [ ]
Separate conversion actions already exist (Sizing Kit Purchase, 5 Pack Purchase, 30 Pack Purchase). Confirm correct primary/secondary assignment across all active campaigns.

**Actions:**
- Pull current conversion goal config via MCP to confirm which actions are set as primary on each campaign
- Sizing Kit Purchase = PRIMARY on: Contrelle - Brand, Contrelle - Search, Contrelle - Shopping, Contrelle - PMax
- 5 Pack Purchase + 30 Pack Purchase = SECONDARY on all campaigns (tracked, no bidding influence)
- "Checkout" = confirm status — keep as secondary or informational, do not delete
- Document confirmed state in context/google-ads/data/conversion-goal-config.csv

---

## Phase 2: PMax — Sizing Kit Only Listing Group [ ]
PMax is currently the £1,500/mo spend vehicle. It must show only the Sizing Kit.

**Actions:**
- Change PMax listing group from "All products" to product filter: id = v01sp (Sizing Kit only)
- Confirm bid strategy remains Max Conversions (not tROAS — £8.99 conversion value makes tROAS targets unworkable)
- Set primary conversion goal on PMax to "Sizing Kit Purchase" once Phase 1 is complete
- Review PMax asset groups — ensure all creative angles reference the Sizing Kit and entry funnel, not the 30 Pack

---

## Phase 3: Shopping — Sizing Kit Only [ ]
Shopping campaign (currently Manual CPC, £20.50/day) needs same product restriction.

**Actions:**
- Change product listing group to id = v01sp only
- Confirm campaign stays separate from PMax (PMax already excludes being run alongside standard Shopping for the same products — need to check campaign priority settings)
- Set primary conversion goal to "Sizing Kit Purchase" once Phase 1 is complete

---

## Phase 4: Search & Brand — Confirm Conversion Primary [ ]
Search and Brand currently have Sizing Kit Acquisition as primary per business.md — but the actual conversion data shows only "Checkout" as the live conversion action. Once Phase 1 conversion actions are created:

**Actions:**
- Confirm "Sizing Kit Purchase" is applied as primary on Contrelle - Search and Contrelle - Brand
- "5 Pack Purchase" and "30 Pack Purchase" set as secondary on both
- RSA audit: check active ads in Search and Brand — any copy pushing 30 Pack / monthly supply angles should be deprioritised or replaced with Sizing Kit angles

---

## Phase 5: Negative Keyword Strategy — Block Repeat Purchase Signals [ ]
Add negatives to catch searches from existing customers looking to reorder (not new customers).

**Campaign-level negatives to add (Search & Shopping):**
- "refill", "reorder", "restock", "monthly supply", "subscription refill", "repeat order"
- Review search term report after relaunch for additional signals

---

## Phase 6: Sitelinks — Lead with Sizing Kit [ ]
"Sizing Kit" sitelink is approved. Ensure it is the first sitelink on all campaigns.

**Actions:**
- Reorder sitelinks on Brand, Search, Shopping, PMax — Sizing Kit first
- Review and confirm sitelink URLs point to /product/contrelle-activgard-sizing-kit/ (not legacy /sizing-kit 404)

---

## Phase 7: Feed — Send Jen Option A XML [ ]
Already prepared: created/product-feed-option-a-2026-05-21.xml
3 simple products, identifier_exists: false on 5 Pack and 30 Pack, 10 additional images per product.

**Actions:**
- Send Jen created/product-feed-option-a-2026-05-21.xml with email created/emails/2026-05-21-jen-xml-feed-corrections-v3.txt (already copied to clipboard)
- Once Jen confirms update, trigger manual GMC fetch
- Confirm 3 products approved in GMC before re-enabling campaigns

---

## Phase 8: business.md — Document the Rule [ ]
Update context/business.md to explicitly document:
- Sizing Kit = only primary conversion action across all campaigns
- 5 Pack and 30 Pack = secondary only, tracked not bid on
- Shopping/PMax = Sizing Kit listing group only
- Any future campaign addition must default to Sizing Kit primary unless explicitly discussed

---

## Dependency Order
1 → 2 → 3 → 4 (conversion setup must precede campaign goal assignment)
5, 6, 7, 8 can run in parallel once Phase 1 is confirmed

## Open Question Before Starting
Conversion actions: do "Sizing Kit Purchase", "5 Pack Purchase", "30 Pack Purchase" already exist as separate Google Ads conversion actions, or do all 3 per-SKU GTM tags currently fire into the single "Checkout" conversion action?
