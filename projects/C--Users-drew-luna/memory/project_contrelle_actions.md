---
name: project-contrelle-actions
description: Prioritised action list for Contrelle Google Ads account - open items as of 2026-05-31
metadata: 
  node_type: memory
  type: project
  originSessionId: 375620ae-1856-4729-ab90-759578f11037
---

Outstanding actions for Contrelle account. Update or remove when complete.

**Why:** Account live since 2026-05-21. Full audit circuit run 2026-05-30/31.

## Awaiting Kate

- [ ] Kate: RSA v2 approval (Excel sent 2026-05-31, 10 AGs). On approval: enable 7 paused ad groups, apply v2 copy via API.
- [ ] Kate: Confirm guarantee/returns policy. Offer audit D09 FAIL + LP email sent 2026-05-31. Options: (a) 30-day returns already exists per Delivery & Returns sitelink ("Free Returns Within 30 Days") - if true, add to product page + ads. (b) Add new policy.
- [ ] Kate: Social proof on /product/contrelle-activgard-sizing-kit/ - 2-3 testimonials near buy button (in LP email 2026-05-31).
- [ ] Kate: Confirm /getting-started/ H1 swap + above-fold CTA - ask dev, low effort. Needed before Pelvic Floor Retraining ad group enables.
- [ ] Kate: COGS for all 3 SKUs - strategy audit + CPA guardrail blocked without it.

## Campaigns

- [ ] On Kate RSA v2 approval: set Final URLs for 7 paused ad groups per `context/analysis/lp-routing-decisions.md` before enabling.
  - NHS & Prescription: /product/contrelle-activgard-sizing-kit/
  - Menopause: /product/contrelle-activgard-sizing-kit/
  - Everyday Triggers: /product/contrelle-activgard-sizing-kit/
  - Sizing Kit Trial: /product/contrelle-activgard-sizing-kit/
  - Pad Alternative: /shop/
  - Non-Surgical Solutions: /product-information/
  - Pelvic Floor Retraining: /getting-started/ (pending H1 fix)
- [ ] PMax asset refresh: apply spec from `created/rsas/20260531_contrelle-pmax-assets.txt` via UI (2 headlines add/remove, 2 descriptions, 2 long headlines).
- [ ] Shopping root SUBDIVISION shows PAUSED in API despite UNIT nodes ENABLED - monitor spend.
- [ ] Search budget step 2: £45 -> £51/day (7 days after step 1 if learning stable).
- [ ] Search budget step 3: £51 -> £66/day (7 days after step 2).
- [ ] Link orphaned shared list "Stress Incontinenance & Bladder Leaks" to Search + Shopping (4 negatives, low priority).
- [ ] Monitor PMax (Feed Only) - was zero spend, check if cleared.
- [ ] Opt out PMax auto-image/video generation: Settings > Asset automation > GENERATE_IMAGE_ENHANCEMENT + GENERATE_ENHANCED_YOUTUBE_VIDEOS.

## LP / Website

- [ ] Confirm Delivery & Returns sitelink accuracy: "Free Returns Within 30 Days" - check with Kate if 30-day policy exists. If yes, add to product page near buy button. If no, update/pause sitelink (compliance issue).
- [ ] Run /lp-auditor on /product-information/ before scaling Devices & Solutions spend.
- [ ] Run /lp-auditor on /proven-results/ - unaudited, used by Brand.
- [ ] Re-run /lp-auditor on /product/contrelle-activgard-sizing-kit/ once guarantee/social proof added (2026-05-14 audit stale).
- [ ] Pitch dedicated SUI conversion page to Kate after 3 months data - no page on site currently built for paid traffic.

## Copy / Assets

- [ ] When Kate confirms guarantee: update Risk Removal headlines across all 10 Search AGs, re-generate RSA v3.
- [ ] Route 3 INFORMATIONAL keywords to /keyword-auditor for pause/negative: "urinary incontinence" broad, "stress incontinence treatment", "how to stop urine leakage while running".

## Audits Outstanding

- [ ] Run /keyword-auditor - outstanding from prior queue.
- [ ] QS re-audit mid-August 2026 (account < 8 weeks, M3 SKIP until then).

## Tracking / Attribution

- [ ] UTM Final URL suffix added 2026-06-05. Check WooCommerce attribution in 48 hours - confirm PMax clicks now showing as "Source: google / Medium: cpc" instead of Unknown. If still Unknown after 48h, investigate whether WooCommerce attribution plugin is reading gclid/UTMs correctly.

## GTM

- [ ] Consent mode v2: Consent Defaults tag in workspace (PAUSED). Once Jen confirms Complianz CMP: unpause Consent Defaults + add consent update tag + publish as v32.
- [ ] Trigger GMC fetch once Jen confirms additional_image_link tags added to feed.
- [ ] Jen to remove <variation> tag from feed items.
- [ ] Investigate untagged pages - confirm GTM snippet fires on all key page types.

## GA4

- [ ] Review 4 pending GA4 Tasks (likely consent mode / benchmarking setup).
- [ ] Check WooCommerce GA4 plugin version - sending legacy UA events.

## On Hold

- Demand Gen: awaiting video creatives from client (no ETA).
- Consent Mode v2: not live, verify when CMP goes live.
- WooCommerce pricing bug: mixed subscription + non-subscription cart - awaiting dev fix confirmation.
- COGS: required for break-even CPA and strategy audit (blocked pending Kate).

**How to apply:** Read this before making campaign or account changes so work is not duplicated.
**LP routing reference:** `context/analysis/lp-routing-decisions.md`
