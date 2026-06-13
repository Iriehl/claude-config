---
name: allure-outstanding-actions
description: Prioritised outstanding actions for Allure Bath Fashions — carry into every session
metadata: 
  node_type: memory
  type: project
  originSessionId: a4308d6c-3fac-4a43-af54-722eae49d6dc
---

Last updated: 2026-06-10. Full onboarding plan at C:\Users\drew\.claude\plans\build-a-plan-tidy-creek.md.

## COMPLETED TODAY (2026-05-30)
- Offer audit: 67% Needs Attention (context/analysis/offer-audit.md)
- Strategy audit: 86% Good (context/analysis/strategy-audit.md)
- PMax 20% Best supplemental feed refresh: beach towels added (30 IDs), Misona products + underperformers removed (15 IDs)
- Budget updated: PMax 20% Best £1,000/mo, PMax 80% Other PAUSED, Standard Shopping £650/mo, Brand £150/mo
- Client response to NCA/financial email sent (created/emails/2026-05-30-josh-response-nca-financial-data.txt)
- business.md updated with confirmed NCA details, margin data, return rate, revenue targets
- /strategy-specialist --execute goals: revenue target £8,500/mo by Sep 2026, KPI framework written
- /offer-maker angles: 6 angles extracted (Warm traffic), context/offer-angles.md
- /rsa-maker: Brand RSA + PMax text assets, created/rsas/20260530_*
- /search-term-auditor: 94% Excellent, 3 terms to negate (pending MCP fix)
- /competitive-analyst: 61% Needs Attention, Brand IS fix in progress
- /report-generator: Executive summary, created/reports/20260530_allure_executive-summary.html
- Customer Match list uploaded [DONE 2026-05-30]
- Google Ads MCP fixed and reconnected [DONE 2026-05-30]

## TIER 1 — BLOCKING NCA (Drew actions this week)

### Customer Match upload [DONE 2026-06-08 — refreshed]
- Re-uploaded from Shopify Admin to Google Ads Audience Manager (updated list)

### GTM: new_customer parameter on purchase tag [DONE 2026-06-08]
- Implemented via Shopify Customer Events pixel (not GTM)
- ordersCount <= 1 logic, firing to Purchase (1) AW-654320985/dLckCOunnYIYENnKgLgC

### Double counting fix [DONE 2026-06-10]
- Old Additional Scripts were firing Purchase (1) with transaction_id: order_number (short format)
- GADS custom pixel was also firing Purchase (1) with transaction_id: checkout.order.id (GID format)
- Different formats = Google could not deduplicate = every purchase counted twice (~2x inflated conversions)
- Fix: disabled 3 old scripts via Shopify upgrade guide (Google Ads gtag, GA purchase event, Ads conversion)
- GADS custom pixel is now sole source. Expect ~50% drop in reported conversions - correct data, tell client.

### Enable NCA on PMax 20% Best + Standard Shopping [DONE 2026-05-30]
- £24.47 incremental value, GA4 Purchasers + Customer Match segments applied
- GTM new_customer param still outstanding - NCA running on GA4 signal only until live

## TIER 2 — STRATEGY FOUNDATIONS

### Brand IS check [CLOSED 2026-06-09 - CLIENT DECLINED BUDGET INCREASE]
- Client said no to more Brand budget (£300-350/mo ask rejected)
- Brand remains budget-capped at ~£150/mo; IS ~10% is the ceiling at this budget
- No further action - accept Brand as brand protection only, not growth lever

### Set specific numeric revenue target [HIGH]
- D10 WARN from strategy audit
- Run: /strategy-specialist --execute goals
- Context: client £17-18K/month all-channel; GADS ~33% share; discuss stretch target with Drew

### PMax consolidation [DONE 2026-06-09 - LIVE]
- Single PMax campaign now active (20% Best). 80% Other remains paused.

### /strategy-specialist [HIGH — not yet run]
- Run after numeric target set
- Needed before next negate/promote run

## TIER 3 — OFFER AND COPY

### /offer-maker [HIGH]
- Offer audit 67%: D05 FAIL (no unique mechanism), D07/D08 WARN (permanent sale), D01 WARN (value prop = category label)
- Run to generate message angles; feeds RSA copy

### RSA refresh [HIGH — after /offer-maker]
- Current RSAs pre-audit; copy will be stronger with new angles
- Target: PMax 20% Best first, then Standard Shopping

## TIER 4 — TRACKING FIXES

### CMP consent banner [NOT AN ALLURE ISSUE - CLOSED 2026-06-09]

### Standard Shopping budget raise [READY JUNE 11]
- /budget-auditor 84/100. Standard Shopping 585% ROAS + 26.1% IS Lost Budget
- Raise £20/day -> £26/day (+£180/mo, projected +£1,050/mo revenue)
- 14d hold on May 28 change releases June 11 - run /budget-optimizer raise

### analyze-budget-health.js break-even bug [LOW]
- Script reads breakEven from biddingAudit.breakEvenROAS (500) not budgetAudit.breakEvenROAS (295)
- Causes wrong verdicts on D04/D14/D15 - manually overridden in 2026-06-09 audit
- Fix: update script to read from budgetAudit config block

### Conversion window: 90d → 30d [AFTER NCA settled]
- D31 WARN. Do after NCA is live and settled (~late June 2026)

### Google tag migration [OUTSTANDING - 2026-06-10]
- Tag migration wizard entered but NOT completed
- Tag 1 (G-3MGSZ3E7PF): GA4 custom dimensions will be lost - need client sign-off before migrating
- Tag 2 (G-Q1LYD6X4HE / AW-654320985): Google Ads tag - "no access" warning still showing
- Aidan granted direct admin on Allure + Misona accounts 2026-06-10 - try wizard again in 24hrs
- G&Y app currently only has GMC + GA4 connected. Google Ads = Inactive.

### Shopify Thank You page upgrade [OUTSTANDING - awaiting client approval]
- August 26, 2026 deadline. Tracking already sorted. Just need client OK on page template change.
- Hotjar + Yotpo disabled in old scripts - client needs to reinstall via Customer Events if wanted.

### Verify enhanced conversions on order confirmation [LOW]
- D46 WARN. Place test order, confirm EC fires in GTM preview on thank-you page

## TIER 5 — MONTHLY REPORTS

### May 2026 report [DONE - SENT 2026-06-09]

## TIER 6 — GMC + SHOPIFY HOUSEKEEPING [LOW]

- Claim GMC brand profile: GMC > Marketing > Brand > Claim
- Fix Ireland Missing Signals: GMC > Products and shop > Shop quality > Ireland > Fix CTA
- Add descriptions to 14 throw blanket products via Shopify product editor

## SKILLS COMPLETED 2026-05-30

| Skill | Result |
|-------|--------|
| /strategy-specialist --execute goals | DONE. Revenue target set: £8,500/mo by Sep 2026 (derived). KPI framework written. |
| /offer-maker angles | DONE. 6 angles extracted for Warm (Shopping/PMax) traffic. context/offer-angles.md |
| /rsa-maker | DONE. Brand RSA (8H, 3D, Hot). PMax text assets (Warm). created/rsas/20260530_* |
| /search-term-auditor | DONE. 94% Excellent. Negate 3 terms. Do not negate 5 relevant products. |
| /competitive-analyst | DONE. 61% Needs Attention. Brand IS fix in progress. Check 2026-06-14. |
| /report-generator | DONE. Executive summary: created/reports/20260530_allure_executive-summary.html |

## COMPLETED TODAY (continued)
- 3 search term negatives added to "Search Term Exclusions" via API: pool towels, soho house pool towels, tumble twist bath mats
- /lp-auditor: Partial 62% Needs Attention. D30 FAIL (Brand mobile CPA 758% of desktop). DISAPPROVED sitelink ID 46274276146 flagged. Structural/technical/ecommerce deferred (Chrome needed).

## LP AUDIT — DEFERRED MODULES
- Connect Chrome (launch-chrome-debug.bat), then:
  - `/lp-auditor structural` — will flag D11 FAIL (navigation), D02 WARN (category label VP), D05 WARN (no mechanism)
  - `/lp-auditor technical` — Lighthouse mobile speed; Brand mobile CPA gap (D30 FAIL) suspected root cause
  - `/lp-auditor ecommerce` — product page, cart, category

## COMPLETED 2026-06-01

| Skill | Result |
|-------|--------|
| /lp-auditor (full - all 6 modules) | DONE. 63% Needs Attention. CWV all Good. Mobile CVR gap is offer/structural. Key issues: no H1, generic CTAs, no shipping progress bar, Misona footer link. context/analysis/lp-audit.md |
| /placement-auditor | DONE. 6% Critical baseline. Peppa Pig + religious revival on active PMax. Zero exclusion infrastructure. context/analysis/placement-audit.md |
| /placement-optimizer | DONE. 195 ops applied. 6 video exclusions, 7 content labels, 21 bad domains (account-level + shared list "PPCOS - Bad Domains"), 140 app categories. context/analysis/placement-changelog.md |
| Client website improvements email | DONE. 6 LP findings for client/dev. Holding to collate with Misona LP audit. created/emails/2026-06-01-website-improvements.txt |

## AWAITING CLIENT - SALES CALENDAR (asked in meeting, ~2026-06-12)
- Drew asked Allure for a full-year calendar: sales, planned discounts, seasonal peaks/dips
- Chase if no reply by late June; feeds seasonality adjustments (known gap - never used)
- Complement: pull 3-5yr monthly impression history from Google Ads to derive demand curve independently (planned, hub session)

## SKILLS STILL TO RUN

| Skill | Priority | When |
|-------|----------|------|
| /placement-auditor (re-audit) | HIGH | 2-4 weeks after 2026-06-01 to confirm exclusions applied and score improvement |
| /quality-score-auditor | MEDIUM | Run if Brand IS not recovered by 2026-06-14 |
| /budget-auditor | MEDIUM | Run after 2026-06-05 (14d post budget change) |
| /keyword-auditor | LOW | After PMax consolidation settles |

**Why:** Carry into every session to avoid re-deriving completed work.
**How to apply:** Read at session start, surface outstanding items relevant to the current task.
