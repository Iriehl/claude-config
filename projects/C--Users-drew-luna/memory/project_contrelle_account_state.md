---
name: Contrelle Account State
description: Campaign status, go-live state, pending actions, and conversion tracking for Contrelle Activgard Google Ads account
type: project
originSessionId: 1622f54c-ab6c-4f3e-9505-32d878acfb56
---
Account went live week of 2026-05-07 with new website. New URL structure: products at `/product/[slug]/` (e.g. `/product/contrelle-activgard-sizing-kit/`). Old URLs (`/sizing-kit`, `/shop`) no longer valid — needed updating across ads.

Website fully scraped and context refreshed 2026-05-13. New brand headline: "Stop bladder leaks. Immediately." New pages: /product-information, /getting-started, /proven-results. Old pages removed: /what-is-contrelle, /who-is-contrelle-for, /urinary-incontinence, /testimonials (as standalone).

**Why:** New website launched, all old Final URLs had to be updated to new product page paths.

**How to apply:** Default Final URL for sizing kit ads = `https://contrelle.com/product/contrelle-activgard-sizing-kit/`. Do not use `/sizing-kit` or `/shop` — these are dead on the new site.

## Campaign Status (as of 2026-05-21)

All 4 active campaigns ENABLED as of 2026-05-21.

| Campaign | Status | Bid Strategy | Notes |
|---|---|---|---|
| Contrelle - Brand | ENABLED | Max Conversions | New customer only mode on. Sizing Kit primary conversion. Daily cap: £15 (reduced 2026-05-30 from £30 — 2% IS loss, overcapped). |
| Contrelle - Search | ENABLED | Max Conversions | New customer only mode on. Sizing Kit primary conversion. Daily cap: £45 (increased 2026-05-30 from £30 — 90% IS-lost-to-budget). |
| Contrelle - PMax | ENABLED | Max Conversions | Sizing Kit only listing group (v01sp). New customer only mode on. Daily cap: £40. |
| Contrelle - Shopping | ENABLED | Manual CPC | All 3 SKUs: v01sp £2.50, v01p5 £0.65, v01p30 £0.65. Daily cap: £45. |
| Contrelle - Demand Gen | PAUSED | Max Conversions | No budget confirmed for 2026 — do not activate. |
| Contrelle - PMax (Feed Only) | ENABLED | — | Launched 2026-05-27. Feed-only PMax. Daily cap: £40. Only spending ~£24/mo actual — utilisation problem, not budget. |

**Why Demand Gen is on hold:** No confirmed budget for 2026. May not launch this year.
**How to apply:** Never suggest activating Demand Gen until user explicitly confirms budget and video creatives are ready.

## Sitelinks (as of 2026-05-21)

Brand, Search, and PMax all have 10 sitelinks. All URLs confirmed live.

| Sitelink | URL |
|---|---|
| Sizing Kit | /product/contrelle-activgard-sizing-kit/ |
| Proven Results | /proven-results/ |
| How It Works | /product-information |
| Getting Started | /getting-started |
| FAQs | /frequently-asked-questions/ |
| About Contrelle | /about/ |
| Real-Life Experiences | /category/real-life-experiences/ |
| Shop Now | /shop |
| Contact Us | /contact/ |
| Delivery & Returns | /delivery-information |

## Conversion Tracking -- CLEAN AS OF 2026-05-21

Single primary conversion action confirmed: Purchase - Sizing Kit only.

| Action | Status | Primary |
|---|---|---|
| Purchase - Sizing Kit | ENABLED | True |
| Purchase - 5 Pack | ENABLED | False (secondary) |
| Purchase - 30 Pack | ENABLED | False (secondary) |
| Contrelle (web) purchase | HIDDEN | False (fixed 2026-05-21 — was True despite HIDDEN, zero conversions) |
| Checkout | ENABLED | False |

All campaigns on account-default conversion goals (not campaign-specific custom goals).

## Conversion Tracking -- TRACKING SETUP

GTM rebuild complete (Version 29). Tag firing, float rounding, and all-subscription/all-normal carts all confirmed working (2026-05-15). Sign-off blocked on WooCommerce pricing bug fix.

**What was fixed (GTM side):**
- Float rounding: Math.round(x * 100) / 100 on all 3 revenue CJS variables
- Enhanced conversions: user_data/email on all three GADS conversion tags
- Multi-SKU triggering: 3 boolean CJS variables, triggers updated to equals true

**Outstanding:**
- Go-live sign-off test plan: `context/analysis/gtm-test-plan-golive.md` (34 tests, all blank, ready to run)
- Pre-fire tag: still paused in GTM, delete when container is stable post-go-live
- Consent Mode v2: not live, verify when CMP goes live
- 5-Pack item_name in dataLayer has no size label - flagged to dev alongside pricing bug

## WooCommerce Pricing Bug -- Dev Fix NOT Confirmed

Subscribe and save discount distributed proportionally across all cart items instead of subscription item only. Affects mixed subscription + non-subscription carts only. All-subscription carts are fine.

Dev confirmed fix actioned 2026-05-18, but A1 staging test (Order 2324) showed bug still present - Sizing Kit £8.41 (should be £8.99), 5-Pack £14.97 (should be £14.39). Exact same proportional split as original bug.

Follow-up email sent to Jen: `created/emails/2026-05-18-jen-pricing-bug-not-fixed-v2.txt`.

**Next:** Await dev confirmation that fix is live on staging, then re-run from A1. All Module A tests must pass before campaigns re-enable.

## Negative Keyword Fixes

- 2026-05-08: Gen Negs list removed from Brand — was blocking brand prescription + reviews queries
- 2026-05-08: `surgery` broad + `operation` broad removed from Brand Negatives 2026
- 2026-05-08: `continence pessary` moved from Stress Incontinence & Bladder Leaks → Devices & Solutions
- 2026-05-14: `sudden urge to pee and can't hold it` (broad + phrase) removed from Stress Incontinence & Bladder Leaks — OAB intent, wrong condition
- 2026-05-14: OAB/urge incontinence cluster negatives added to Search + Brand campaigns (phrase match): "sudden urge to pee", "can't hold it in time", "urge incontinence", "urge to urinate", "overactive bladder", "OAB", "bladder urgency"

## Negatives — Add Before PMax Launch

Priority negatives to add to Shopping (and future PMax) before PMax goes live ~2026-05-12:
- Competitor brands: efemia, jude, uresta
- Medication intent: tablets, medicine, pills, medication
- Absorbent products (review first): pads, patches, pants

## LP Audit — 2026-05-14 (Baseline)

Full audit run on new site (live 7 days). Report at `context/analysis/lp-audit.md`.

**Overall: 47% — Critical** (standard WooCommerce product page, not a conversion LP)

| Module | Score | Key Issue |
|---|---|---|
| Structural | 19% | No social proof, no objection handling, no guarantee near CTA, full nav present |
| Message Match | 80% | Headline/offer match strong; ad stats (68%, 7 trials, 95%) absent from page |
| Technical | 51% | Chrome DevTools unavailable — needs PageSpeed Insights verification |
| Performance | 68% | 3.1% CVR healthy for week 1; Search CPA £71 is learning phase |
| URL Health | 42% | /sizing-kit → 404 in enabled ads (legacy campaigns); PMax URL expansion WARN |
| Ecommerce | 13% | No reviews, no express pay, no guarantee near CTA |

**Critical actions:**
1. Add reviews/social proof + clinical stats (68%, 95%, 7 trials) to product page
2. ~~Fix /sizing-kit 404 in all affected enabled ads~~ — CLOSED 2026-05-14. Old ads staying paused; if re-enabled, user will update Final URLs to /product/contrelle-activgard-sizing-kit/ manually.
3. ~~**Check PMax URL expansion**~~ — CLOSED 2026-05-14. Confirmed DISABLED via Google Ads Editor. PMax restricted to sizing kit product page only. Dynamic image assets also OFF — manual imagery only (user has good imagery).

CVR: Brand 4.6%, Shopping 3.3%, Search 1.4% (learning phase). Do not optimize away from current LP until more data.

## GA4 & GTM State (as of 2026-05-28)

- GTM: **Version 31 live (2026-05-28)**. Per-SKU tags active. All 3 revenue variables (dlv - item revenue - 5 Pack/Sizing Kit/30 Pack) fixed: `.toLowerCase()` on item_id + `return undefined` (not 0) when SKU not found. Consent Defaults tag in container but PAUSED — pending Jen confirming CMP (Complianz). See context/gtm.md.
- GA4: G-4TTKBF2VPB, stream contrelle.com. Full ecommerce funnel tracked. Event data retention updated to 14 months (2026-05-16). begin_checkout marked as key event (2026-05-16). See context/ga4.md.

## Remarketing Audiences (as of 2026-05-16)

- All old rule-based audiences (Remarketing - Users visited website/product pages) are CLOSED and Incompatible — WooCommerce migration broke old Magento URL rules
- "All Users of Contrelle" — old auto-created, open but using legacy rules
- "Site Visitors - All Pages (30 days)" — NEW 2026-05-16, listId=9388886003, rule: Page URL contains contrelle.com, 30-day window. Applied as observation to Search (23740334531) + Shopping (23740334537). Status: Populating/under review. NOT yet applied to Brand — do when campaigns re-enable.

## Full Audit Run — 2026-05-30

All 8 pending audits run in one session. Key scores:

| Skill | Score | Top Finding |
|---|---|---|
| offer-auditor | 71% Good | No guarantee (D09 FAIL) |
| placement-auditor | 0% Critical | Zero exclusion infrastructure; 218/221 PMax placements brand-unsafe |
| geo-schedule-auditor | 84% Good | MALE +118% CPA + AGE_65+ +90.6% - monitor |
| bidding-auditor | 48% Critical* | Expected at 9 days; Search 90% IS-lost-to-budget is real blocker |
| budget-auditor | 80% Good | Search raised £30→£45; Shopping IS 48.5% also needs raise |
| competitive-analyst | 69% Needs Attn | No competitor CPC pressure; all IS loss is budget-driven |
| strategy-specialist | 60% Needs Attn | COGS missing; no guardrail KPIs; Conditional Go |
| account-auditor | 88% Good | PMax auto-image/video opted IN (brand risk); R&E 6 impressions |

*Bidding 48% is contextual - account 9 days old, structurally correct.

Reports in `context/analysis/` — all generated 2026-05-30.

## 30-Day Performance Baseline (Apr 7 – May 6)

| Campaign | Spend | Conv | CPA | IS |
|---|---|---|---|---|
| Contrelle - Brand | £84.13 | 7 | £12.02 | 68% |
| Contrelle - Search | £108.43 | 1 | £108.43 | 9.99% (suppressed) |
| Contrelle - Shopping | £97.00 | 5 | £19.40 | 27.5% |
| **Total** | **£289.56** | **13** | **£22.27** | — |

Key signal: Female Incontinence in-market audience (uservertical::80546) converting across all 3 campaigns — strongest audience signal so far. Mobile drives 92% of conversions — too early for bid adjustments but flag for next check.
