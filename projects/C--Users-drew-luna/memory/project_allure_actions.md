---
name: allure-outstanding-actions
description: Prioritised action list for Allure Bath Fashions account — carry into next session to pick up where we left off
metadata: 
  node_type: memory
  type: project
  originSessionId: 4d69b752-1ed8-4eda-8687-bc0edb157935
---

Outstanding actions as of 2026-05-18. GMC label work COMPLETE. tROAS changes done. Search term audit COMPLETE (80/100). Negative lists linked. 5 brand keywords promoted. Soho House negated. Phase 1 executes Thursday 2026-05-22. Full GMC label status: context/analysis/pmax-20-label-status.md.

## GMC CUSTOM LABEL WORK — COMPLETE (2026-05-17-18)

Supplemental feed live: "Allure - PMax 20% Best Custom Labels" → SUPPLEMENTAL SOURCE 3 (feed ID 10659640367).
253 variants, daily auto-refresh 00:00. No errors.
Covers: top 10 revenue products, all dressing gown styles (inc. Velour), 4 high-ROAS performers.
31.2% of 810-variant catalog labelled "20% best".
Source: context/analysis/supplemental-feed-20-best.csv
Full status: context/analysis/pmax-20-label-status.md

## STRATEGY DECISIONS (Session B)

### Phase 1 - PARTIALLY DONE, remainder Thursday 2026-05-22
- PMax 20% Best: tROAS 550% → 500% DONE 2026-05-18 (live data showed 469% actual, 475% too close to floor)
- Standard Shopping: tROAS 500% → 475% DONE 2026-05-18 (needs room to scale budget)
- Search Partners disabled on Brand + Standard Shopping DONE 2026-05-18
- THURSDAY 2026-05-22: Pause PMax 80% Other + PMax 20% Best budget £600 → £900 + Standard Shopping budget £450 → £750
- Budget stays £1,800. Brand stays £5/day.
- REVISED from original plan (Shopping £450→£1,050): NCA goal requires PMax to carry more budget as primary new customer engine; Shopping gets moderate increase for efficiency.

### NCA — NEW CUSTOMER ACQUISITION [CONFIRMED BY CLIENT 2026-05-21]
- Goal: 80% new / 20% existing customers — explicitly stated in financial validation email as paper trail
- Financial validation email v8 ready to send: created/emails/2026-05-26-financial-validation-questions-v8.txt
- ROAS expected to drop to ~350% once NCA active (currently 436%) — client informed, paper trail in email
- PENDING CLIENT RESPONSE: value premium confirmation (ROAS range acceptable?) + definition of "new customer" (website-only or all channels)
- Drew to action: upload Customer Match list from Shopify Admin (overdue)
- GTM action needed: add new_customer parameter to purchase conversion tag (D47 WARN)
- NCA mode on PMax 20% Best: enable AFTER Customer Match live AND client confirms value premium/definition
- RLSA on Standard Shopping: bid down on Customer Match list once live

### Phase 2 - March/April 2027 (REVISED from January)
- Full PMax consolidation: restore PMax 20% Best to all 810 products, enable NCA on full catalog
- March-April is seasonal trough — right window for restructure (avoid Jan, May, Nov peaks)
- PMax 20% Best: £1,200/mo. Standard Shopping: £450/mo. Brand: £150/mo.
- NCA on full catalog gives Google maximum signal diversity for new customer acquisition.

### March 2026 collapse - root cause confirmed
- PMax 20% Best tROAS was raised 512% -> 600% on 12 Feb, then 600% -> 650% on 19 Mar (wrong direction reactive tightening)
- 650% in seasonal March demand = algorithm pulled back hard. Spend £497 (Feb) -> £192 (Mar).
- Full change history: context/analysis/change-history-jan-mar-2026.md

**Why:** Avoid re-deriving work that's already been diagnosed. Pick up from here.
**How to apply:** Read this at session start, cross-reference with business.md and relevant context files.

---

## AWAITING CLIENT RESPONSE

### PMax Consolidation (HIGH - sent 2026-05-13)
- Email sent: created/emails/2026-05-13-pmax-split-review.txt
- Recommendation: consolidate PMax 20% Best + PMax 80% Other into single campaign, tROAS 500-525%
- Evidence: 237pp ROAS decline post-split, ~£37,500 revenue lost over 15 months
- Next: when client approves, apply via GADS API. Do not touch until confirmed.

---

## GOOGLE ADS — READY TO ACTION

### Search Partners Disable — DONE 2026-05-18
- Disabled on Brand and Standard Shopping by user.

### Brand IS Recovery Check (~2026-05-27) [updated 2026-05-17]
- Brand strategy changed 2026-05-13 to Target IS 80%, Top of page, £1.00 max CPC
- 30-day IS at validation: 9.99% (84.96% rank-lost, 6.55% budget-lost) — still in learning at 2026-05-17 (4 days old)
- Check IS after 14 days from change (~2026-05-27): should climb toward 50%+
- If IS recovers and budget becomes constraint → make case for raising to £15/day (£450/mo)
- If IS still low → strategy change may need refinement

### Orphan Portfolio "Search Bid Strategy" — NO ACTION NEEDED (checked 2026-05-18)
- TARGET_ROAS 170%, contains "Allure - Shopping - Mats" and "Allure - Shopping - Towels" — both PAUSED
- Legacy campaigns from old product-type split structure. Can be archived/deleted at any time, no urgency.

---

## GOOGLE MERCHANT CENTER

### Claim Brand Profile (LOW — one-time, quick)
- GMC flagged: brand profile not claimed
- Action: GMC → Marketing → Brand → Claim your brand profile
- Benefit: control brand description and images in Google Search brand panel

### Add Descriptions to 14 Throw Blanket Products (LOW)
- GMC flagged 14 throw/blanket SKUs missing product descriptions
- Action: update via Shopify product editor (field syncs to GMC automatically)
- Products: Ombre Faux Mohair Throw, Aisling Faux Mohair Throw, Darwin Chenille Tartan Throw, Savannah Chenille Herringbone Throw, Arizona Zig Zag Herringbone Throw + others

### Fix Ireland "Missing Signals" (MEDIUM)
- GMC shows Ireland = "Missing signals" vs UK = Top Quality Store
- Action: GMC → Products and shop → Shop quality → Ireland → follow Fix CTA
- Likely fix: ensure returns policy, business address, or shipping profile is configured for IE

---

## GA4 / TRACKING

### Investigate Unassigned Channel (MEDIUM)
- 1.3k sessions/7-day in "Unassigned" — largest single channel, attribution gap
- Likely cause: Shopify email flows without UTM parameters, or social bio links without UTMs
- Action: check Klaviyo/Shopify Email for UTM tagging on automated flows; check link-in-bio tools
- Check in GA4: Explore → Free form → filter by Unassigned → look at landing pages and source/medium

### Monitor Organic Search Decline (WATCH)
- Organic Search down 28.2% in last 7 days (to 2026-05-15)
- Could be seasonal, could be algorithmic. Check Google Search Console for impression/click trends
- Flag to client if it continues beyond 14 days

### Monitor Add to Cart Events (WATCH)
- add_to_cart down 18.5% in 7 days (288 events)
- If continues → review product page experience, sale price display, or seasonal product-mix
- Cross-reference with Shopify CVR (-17%) — both declining together = product page or offer issue

### Singapore/India Traffic Spikes (LOW)
- Singapore +163%, India +110% in last 7 days — unusual for a UK home textiles brand
- Check if these sessions convert (GA4 Explore: sessions by country + purchase event)
- If not converting, add as geo exclusions in GADS (campaigns currently UK-targeted — confirm)

---

## SHOPIFY / SITE

### Investigate CVR Decline (MEDIUM)
- Shopify CVR: 2.13%, -17% vs prior period despite sessions +18%
- More traffic landing but fewer buying — could be: traffic quality shift, seasonal product-mix, pricing
- Check: which landing pages are getting the new traffic? (GA4 → pages report by new sessions)
- Cross with: which products have declining view_item → add_to_cart rates

### OOS Products — Monochrome Christmas Tree Hand Towel (LOW)
- 2 variants out of stock. Seasonal product — client decision: restock or deactivate listing
- If deactivated, ensure Shopping/PMax feed excludes it automatically (Shopify sets availability = out_of_stock)

### Email List Building (STRATEGIC — low urgency)
- 40,342 customers, low email opt-in rate observed in recent orders
- Opportunity: increase email capture (pop-up, post-purchase prompt) to monetise existing traffic
- Not a GADS task but affects the Unassigned channel and overall LTV

---

## CONVERSION TRACKING — AUDITED 2026-05-18 (81/100 Good)

Full /tracking-specialist audit complete. One FAIL, all else clean.

**FAIL — D28: Add CMP / consent banner (HIGH PRIORITY)**
- All 4 CM v2 signals pre-granted on load, no user-interaction step. UK GDPR/PECR exposure.
- Fix: Shopify CMP app (Cookiebot, OneTrust, or native). Configure CM v2 default denied + update on acceptance.

**WARN — D31: Shorten Purchase (1) window from 90 to 30 days**
- 90-day window inflates tROAS signal for £35 AOV impulse product. Change in a stable period.

**WARN — D46: Verify enhanced conversions on order confirmation page**
- EC dataLayer confirmed on add_to_cart. Can't verify on thank-you page without completing test purchase.

**Clean:** Single primary, +8.8% WoW, Conversion Linker active, all campaigns on account defaults. Smart Bidding signal trustworthy.

**Fix business.md GTM note:** Remove "GTM container is effectively abandoned (5 years stale)" — GT-K46MNTM is actively firing. Wrong container ID cited in old note.

## CLIENT EMAIL SENT 2026-05-17
- Data-request email sent: created/emails/2026-05-17-allure-data-request.txt
- Asks: delivery speed, top 10-15 products by Shopify revenue (90d), GMC brand profile claim, Ireland GMC signals, 90-day conversion window heads-up
- Needed for Session B strategy work (especially product revenue data)

## SEARCH TERM WORK — COMPLETE 2026-05-18

All ST work done in this session. Next ST audit recommended 14-30 days post-changes to measure impact.

- Full 180d audit: 80/100 Good. Report: context/analysis/search-term-audit.md
- Negative lists linked: Master Negatives + Blankets and Throws → all 3 non-brand campaigns
- "Search Term Exclusions" list created + linked to all 3 non-brand campaigns
- "soho house" PHRASE negated (ST-E01, overrode hard-block — tracking/strategy audits still missing)
- 5 brand keywords promoted to Brand campaign (ST-E03)
- 26 PMax underperforming core product terms — do NOT negate, awaiting PMax consolidation then route to /lp-auditor + /offer-auditor
- Misona flag: NEVER add "misona" as a negative in any campaign — sister brand products running on Allure site

## NEXT SKILLS TO RUN

| Skill | Priority | Trigger |
|-------|----------|---------|
| /tracking-specialist | COMPLETE | 2026-05-18 — 81/100 Good. D28 FAIL (CMP) + D31 WARN (90d window) are pending client actions. |
| /strategy-specialist | HIGH | Still missing — was hard-blocking ST-E01 (overridden). Needed before next negate or promote run. |
| /keyword-auditor | LOW | After PMax consolidation settles |
| /competitive-analyst | LOW | Use GMC competitors as seed: kingofcotton.com, snoozetherapy.co.uk, mattressonline.co.uk |
| /search-term-auditor | LOW | Re-run 14-30 days after 2026-05-18 changes to measure impact |
