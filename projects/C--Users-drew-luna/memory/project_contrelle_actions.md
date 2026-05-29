---
name: project-contrelle-actions
description: Prioritised action list for Contrelle Google Ads account — open items as of 2026-05-21
metadata: 
  node_type: memory
  type: project
  originSessionId: 375620ae-1856-4729-ab90-759578f11037
---

Outstanding actions for Contrelle account. Update or remove when complete.

**Why:** All 4 campaigns now ENABLED as of 2026-05-21. Account is live.

## Feed / GMC

- [ ] Trigger GMC fetch once Jen confirms additional_image_link tags added to feed (email sent 2026-05-21-jen-additional-images.txt)
- [ ] Jen to remove <variation> tag from feed items (email sent 2026-05-21-jen-remove-variation-attribute-v2.txt)

## Campaigns — Now Live

- [x] Re-enabled all 4 campaigns 2026-05-21
- [x] Conversion goals aligned: Sizing Kit = primary, 5 Pack + 30 Pack = secondary, legacy action fixed
- [x] PMax: Sizing Kit only listing group (v01sp)
- [x] Shopping: all 3 SKUs active — v01sp £2.50, v01p5 £0.65, v01p30 £0.65
- [x] Repeat-purchase negatives on Search + Shopping (refill, reorder, restock, subscription refill, repeat order)
- [x] OAB negatives on Shopping (matched to Search)
- [x] Sitelinks audited, dead URLs fixed, Proven Results + FAQs added
- [ ] Shopping root SUBDIVISION shows PAUSED in API despite UNIT nodes ENABLED — monitor if Shopping doesn't spend in first 24h; toggle in UI if needed
- [ ] Apply "Site Visitors - All Pages (30 days)" audience (listId=9388886003) to Brand as observation (already on Search + Shopping)
- [ ] Add "contrelle activgard bladder support" as EXACT keyword to Brand - General ad group
- [ ] Add competitor/medication negatives to Shopping: efemia, jude, tablets, medicine, pills, medication

## Monitoring (First 2 Weeks)

- [ ] Check Shopping IS — Sizing Kit now at £2.50 bid
- [ ] Monitor Brand IS (76.2%) — if budget-limited, small increase to Brand daily budget
- [ ] Monitor PMax — needs 30+ conversions before adjusting. Do not touch bid strategy until learning phase complete
- [ ] QS on "bladder control" + "urinary incontinence" — if stays at 1 after 2 weeks, move to dedicated ad group
- [ ] "vaginal pessary" keywords — pause after 30 more clicks with 0 conversions

## GTM

- [x] Revenue variable fix: all 3 SKU variables now use .toLowerCase() + return undefined — live in v31 (2026-05-28)
- [ ] Consent mode v2: Consent Defaults tag in workspace (PAUSED). Once Jen confirms Complianz CMP: unpause Consent Defaults + add consent update tag + publish as v32
- [ ] Test 12 retest for mixed subscription + non-subscription cart (pending pricing bug fix confirmation)
- [ ] Investigate untagged pages — confirm GTM snippet fires on all key page types
- [ ] Pre-fire GA4 tag (paused): delete when container stable

## GA4

- [ ] Review 4 pending GA4 Tasks (likely consent mode / benchmarking setup)
- [ ] Check WooCommerce GA4 plugin version — sending legacy UA events

## On Hold

- Demand Gen: awaiting video creatives from client (no ETA)
- Consent Mode v2: not live, verify when CMP goes live
- WooCommerce pricing bug: mixed subscription + non-subscription cart — awaiting dev fix confirmation

**How to apply:** Read this before making campaign or account changes so work isn't duplicated.
