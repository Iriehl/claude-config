---
name: Allure Account State
description: 4 campaigns, £1,800/mo; Phase 1 executed 2026-05-22 (PMax 80% Other paused, PMax 20% Best £900, Shopping £750); NCA target 20% new customers to start (confirmed 2026-06-01); paper trail email v8 ready to send; value premium + new customer definition PENDING client response; Customer Match upload overdue (Drew); new_customer tag param needed (D47); reporting moving to monthly; Phase 2 March/April 2027
type: project
originSessionId: 1950a137-c812-4dea-86f2-b1f9a45df687
---
Long-running ecommerce account (years of data). UK bath mats, towels, throws — Shopify store. Currency: GBP.

**BUDGET RULE — PERMANENT:** Monthly budget is £1,800. Do not update this from API daily cap data or observed spend variations — those reflect intra-month pacing, not budget changes. Only update when the user explicitly states a new monthly budget. Brand campaign is permanently capped at £5/day by client decision — do not change without explicit client instruction.

**Primary KPI: Revenue.** Goal is to grow monthly conversion value. ROAS 500% is a floor/guard rail, not the optimisation target. Do not chase ROAS efficiency at the expense of revenue volume. Mode: Growth.

**Why:** Context needed to pick up mid-session without re-briefing.
**How to apply:** Read this + business.md before any analysis or recommendations on the Allure account.

## Campaigns

| Campaign | Type | Bidding | Target | Monthly Budget |
|----------|------|---------|--------|----------------|
| Allure - Brand | Search | **Target IS 80%, Top of page, £1.00 max CPC** (changed 2026-05-13) | 80% IS | £150 (£5/day cap) |
| Allure - PMax - 20% Best | PMax | Max Conv Value | tROAS 500% | £1,000 (updated 2026-05-30) |
| Allure - PMax - 80% Other | PMax | Max Conv Value | tROAS 500% | **PAUSED** (2026-05-22) |
| Allure - Standard Shopping | Shopping | Target ROAS | 475% | £650 (updated 2026-05-30) |

Total: £1,800/mo

## Brand Campaign — Full Diagnosis (2026-05-13)

### Root cause of 9.99% IS (not the budget)
- IS crashed from 92%+ to 9.99% in **July 2023** — nearly 2 years ago — not May 2026
- The old Core Brand [E] campaign used **Manual CPC** and held 92-97% IS
- "Allure - Brand" was switched to Max Conv Value + high tROAS (~800%) around Jul 2023, IS immediately collapsed
- 85-90% of impressions lost to **rank** (tROAS too high), not budget — even at £40/day test, rank lost IS was 90%
- The £5/day budget cut on May 1 had negligible IS impact (budget lost IS only 0-4% on most days)
- Best recent IS was 23-24.5% in Jul-Aug 2024 — correlated with effectively lower tROAS, not higher budget

### Fixes applied 2026-05-13
1. **Bid strategy changed** to Target IS 80%, Top of page, £1.00 max CPC (user applied in UI 2026-05-13)
   - Was: Max Conv Value, tROAS 750%. Root cause of 9.99% IS since Jul 2023.
2. **26 competitor brand negatives added** via API to campaign-level (script: `.claude/skills/gads-context/scripts/add-brand-negatives.js`)
   - Competitors blocked: christy, dunelm, matalan, vossen, deyongs, debenhams, joules, biba, lakeland, harrods, majestic, ikea, rosebys (BROAD) + john lewis, marks and spencer, dock and bay, bc softwear, soak and sleep, laura ashley, ralph lauren, land and shore, la redoute, oliver bonas, orla kiely, white company (PHRASE)
   - Previous tROAS history: 800% → 750% on 2026-05-01

### What to check after 7 days
- Brand IS should climb from 9.99% toward 50%+
- Budget lost IS will rise once rank improves — if campaign starts budget-capping at £5/day, that's the data point for asking client to raise to £15/day
- Watch actual ROAS — at Target IS 80%, ROAS will likely be lower than cherry-picked 629%, but volume will be higher

### Client budget argument (if IS recovers and budget becomes constraint)
- Historical: 92%+ IS was achieved at ~£3-5/day on Manual CPC — proves efficiency of right strategy
- £15/day (£450/mo) = what was running Apr 27-30, pre-cut. Safe anchor for the ask.
- "Extend the test" argument is invalid — IS was 9.99% at every budget from £6 to £40/day; budget was never the variable

### Search term hygiene (found 2026-05-13)
- Brand campaign had competitor and generic queries triggering (Christy, Dunelm, M&S etc.) — now blocked
- "allure" (bare) has very low CTR (3.9%) — likely catching Allure magazine searches; monitor
- "allure fashion", "allure bathrooms and kitchens" = wrong businesses; worth adding exact negatives if volume persists

## Key Issues to Watch

### PMax Product Split (ANALYSIS COMPLETE 2026-05-13 - Awaiting Client Approval - Client meeting week of 2026-05-19)
- Split created February 2025. 15 months of data analysed.
- Pre-split ROAS (Apr 2024 - Jan 2025, single campaign): 766% blended, peak 873-930%
- Post-split ROAS (Feb 2025 - Apr 2026): 529% combined — a 237pp decline
- Revenue cost: ~£37,500 lost over 15 months at equivalent spend
- 80% Other avg 487% ROAS, never hit pre-split levels, multiple months sub-400% (min 296%)
- 20% Best also degraded post-split (586% avg vs 766% pre)
- RECOMMENDATION: Consolidate to single PMax with all products, tROAS 500-525% to start (NOT 600% — too tight, will cause under-spend during re-learning), raise toward 600%+ as performance stabilises
- Client email sent 2026-05-13: created/emails/2026-05-13-pmax-split-review.txt
- Client meeting reference sheet (all key data points compiled): created/emails/2026-05-17-pmax-consolidation-reference.txt
- Next step: await client approval, then action consolidation

### PMax 20% Best Flat Patch
- Historically highest-performing; currently 439% actual vs 550% tROAS target, spending 85% of £600 budget
- tROAS loosened from 600% to 550% on 2026-05-01

## Spend Timing Analysis (COMPLETE 2026-05-13)

- Client asked: was the 2025 beginning-of-month 30% spend push worth it? Should we reinstate?
- Verdict: **No.** Push only shifted first-half spend by 5.6pp (45% → 51%). Revenue timing unchanged (49.0% → 49.4% first-half). Revenue growth in 2025 was spend-driven (new PMax-80% + higher budgets), not timing-driven. No consistent pattern of customers buying more in the first half of the month.
- 2026 flat spend tracking 11% ahead of 2025 at similar ROAS.
- Report: context/analysis/spend-timing-analysis.md
- Client meeting: week of 2026-05-19

## Conversion Tracking [AUDITED 2026-05-18 — 81/100 Good]
- Primary: "Purchase (1)" — CONFIRMED correct. Attribution: Data-Driven, 90-day window (WARN — recommend 30d for £35 AOV), 1-day view-through.
- All 57 campaigns on CUSTOMER goal_config_level (account defaults). Single primary. +8.8% WoW volume. Conversion Linker active.
- FAIL: No CMP/consent banner on UK site — all CM v2 signals pre-granted without user interaction. PECR/UK GDPR legal exposure. Priority: add CMP.
- GA4 imports are all secondary (no bid impact). HIDDEN-status Android/local actions excluded from Smart Bidding.
- Report: context/analysis/tracking-audit.md

## Context / Brand
- ads-context-gatherer run 2026-04-25. brand.md, palette.md saved.
- Brand colour: dark navy #023467 + white. Fonts: Red Hat Display / Poppins.
- Key trust signal: 4.9/5 Google rating. Free UK shipping over £40 + free 30-day returns.
- AOV: £35.05 (30-day to 2026-05-12). No gross margin data available.

## Account Audit (2026-05-13)
- Score: 93% — Excellent. 0 FAILs, 4 WARNs.
- WARNs: Search Partners unevaluated (Brand + Shopping), mixed geo targeting method, Brand ad group volume low (budget constraint), defaults unverified.
- Report: context/analysis/account-audit.md
- Priority next steps: /bidding-auditor, /tracking-specialist (drop /budget-auditor — redundant pending PMax consolidation)
- Search Partners: disable on Brand + Standard Shopping (24mo data: near-zero clicks, zero revenue)
- KPI updated: Revenue is primary KPI, ROAS 500% is floor only — do not optimise for ROAS at expense of revenue

## Misona Products (added 2026-05-14)

- Misona eco-comfort bath mats added to Allure site: allurebathfashions.co.uk/collections/eco-comfort-bath-mats-by-misona
- Cross-sell arrangement — any conversion is incremental revenue for Allure
- Added to: Standard Shopping + PMax
- Initially added to PMax 20% Best (wrong) — moved to PMax 80% Other 2026-05-14. Correct placement: no Allure sales history, they don't qualify for 20% Best
- Standard Shopping: 0 conversions so far. PMax will take priority over Shopping for same products while both active
- PMax 80% Other was already at 97% budget utilisation (£581/£600) before Misona added — Misona now competing for a full budget
- Recommended: subdivide Standard Shopping by Brand > Misona for isolated performance tracking and separate tROAS control. Requires "Misona" brand field set correctly in Merchant Center feed
- Watch period: 7-14 days. Red flags: no impressions (feed issue or budget crowded out) vs clicks/no conversions (collection page issue)

## Bidding Audit (2026-05-14)
- Score: 78/100 — Good
- Top hypothesis: Struct — PMax split causing signal dilution (PMax 20% Best at 70% rank-lost IS)
- Brand in learning from Target IS strategy change (2026-05-13) — do not touch until ~2026-05-27
- Standard Shopping tROAS 500% = break-even proxy, no buffer — hold change pending PMax consolidation decision
- Orphan portfolio "Search Bid Strategy" (TARGET_ROAS 170%, 2 campaigns) in account — needs manual UI check
- Standard Shopping opportunity: +17 conv/30d available with budget raise (22.9% budget-lost IS)
- Report: context/analysis/bidding-audit.md

## Cross-Platform Context [VALIDATED 2026-05-17]

**Shopify:** £21,995.90 all-channel 30-day revenue. Gross margin 48% confirmed from COGS (break-even ROAS ~208%). CVR 2.21% (was 2.13%). Sessions 9,667. AOV £34.87 (Google Ads-tracked). Multi-channel: Mirakl marketplace ~£8.2k/mo + Walmart ~£1.4k/mo = ~£9.7k/mo not touched by Google Ads. Google Ads drives 57% of direct web revenue.

**GMC:** 810/810 approved, UK = Top Quality Store, Ireland = Missing signals. Competitor delivery benchmark updated: 3.3-day/£0.90 (was 5.3-day/£1.91 — competitors significantly improved). Auction set updated: mattressonline.co.uk now in auction (replaced sensoryeducation.co.uk).

**GTM:** GT-K46MNTM is ACTIVE — confirmed firing Google Ads (AW-654320985) and GA4 (G-Q1LYD6X4HE) tags via Chrome DevTools 2026-05-18. (Previous note "Dead — GTM-MHSGPL4 5 years stale" is wrong — different container ID.) Second GA4 property G-3MGSZ3E7PF runs inside Shopify WPM sandboxed iframe (frm=2), separate from GTM context.

**GA4:** 30-day users ~11k. Unassigned channel = largest single source (1.3k/7-day) — attribution gap.

Context files: `context/shopify.md`, `context/gmc.md`, `context/gtm.md`, `context/ga4.md`

## Session A — COMPLETE 2026-05-17

Full validation run complete. business.md updated with [VALIDATED 2026-05-17] tags throughout. All 6 checkpoint files written: context/analysis/validation-checkpoint-1a/1b/1c/1d/2/3.md

**For Session B (strategy review):** Read business.md + all 6 checkpoint files + context/analysis/monthly-performance-2023-2026.csv. Key agenda: PMax consolidation decision, tROAS targets vs current performance, budget allocation, Standard Shopping growth case, hero product strategy.

## GMC — Supplemental Feed [LIVE 2026-05-17, EXPANDED 2026-05-18]
- Feed: "Allure - PMax 20% Best Custom Labels" — SUPPLEMENTAL SOURCE 3 (feed ID 10659640367)
- 253 variants labelled custom_label_1 = "20% best" — 31.2% of 810-variant catalog
- Covers: top 10 revenue products (all variants), all dressing gown styles (Waffle, Bathrobe, Velour), 4 high-ROAS performers (Striped Chunky Bobble, Marble Chunky Bobble, Banjara Sofa Throw, Ribbed Bath Mat Set)
- Daily auto-refresh 00:00. No errors.
- Source: context/analysis/supplemental-feed-20-best.csv
- Full status: context/analysis/pmax-20-label-status.md

## Search Term Work — COMPLETE 2026-05-18

### Audit (180d)
- Score: 80/100 Good. Report: context/analysis/search-term-audit.md
- Top finding: 3 non-brand campaigns had zero negative coverage — now fixed
- 26 PMax underperforming terms = B2 (core product categories) — do NOT negate, route to LP/offer auditors post-consolidation
- 474 promotion candidates identified; top brand terms now actioned

### Negative Lists — Fully Linked
- Master Negatives (167 kws) + Blankets and Throws (46 kws) now linked to PMax 20% Best, Standard Shopping, PMax 80% Other
- "Search Term Exclusions" (new list) created and linked to same 3 campaigns
- All 4 non-brand campaigns: 3 shared lists linked, full coverage

### Keywords Promoted to Brand Campaign (ST-E03)
- "allure bath mats" EXACT + PHRASE → Brand Products ad group
- "allure bathroom mats" EXACT + PHRASE → Brand Products ad group
- "allure bath fashions discount code" EXACT → Allure Bath Fashions ad group (discount intent — monitor LP experience)

### Negate Applied (ST-E01)
- "soho house" PHRASE → Search Term Exclusions (Soho House members club brand, £7 wasted spend)

### Misona — IMPORTANT FLAG
- Misona is a sister brand whose products Allure runs on their site
- NEVER add "misona" as a negative keyword in any future negate run across any Allure campaign
- This applies to all current and future campaigns

### Changelogs
- context/analysis/search-term-changelog.md created 2026-05-18
- Operations files: created/search-terms/operations-2026-05-18.json (promote) + operations-2026-05-18-negate.json

## Data Status
- business.md: FULLY VALIDATED 2026-05-17.
- gads-context last pulled 2026-05-18 (negatives re-pulled for negate run).
- account-changelog.md current to 2026-05-13.
- account-audit.md current to 2026-05-13.
- bidding-audit.md current to 2026-05-14.
- search-term-audit.md current to 2026-05-18.
- tracking-audit.md current to 2026-05-18.
- shopify.md, gmc.md, gtm.md, ga4.md created 2026-05-16.
