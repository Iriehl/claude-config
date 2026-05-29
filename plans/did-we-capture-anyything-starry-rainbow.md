# Monthly Performance Report — Allure & Misona

## Context

Moving from bi-weekly Data Studio reports to monthly HTML reports for Allure and Misona (same owner, built in parallel). Feedback: commentary is severely lacking — clients need to know what was done, why, and what happened. Green colour scheme, uniform across all clients. Template established here will extend to Surrey Fire and Contrelle later.

**Critical distinction:** The existing `/report-generator` skill only handles audit reports (account structure, bidding, tracking, etc.). The monthly performance report is a completely new type — different data source, different layout. We extend report-generator to support both.

---

## Phase 0 — Brand Setup

### 0.1 Update brand.json (hub level)
File: `C:\Users\drew\luna\my-brand\brand.json`

Change colour scheme to green:
- Primary: `#14532D` (dark green)
- Accent: `#16A34A` (mid green)
- Secondary: `#F0FDF4` (light green tint)
- Background Alt: `#F7FEF9`
- Text / Text Light: unchanged

### 0.2 Logo setup
- **Misona:** logo already at `context/brand-assets/logo.jpg` — configure path in report template
- **Allure:** no logo file exists — grab from allurebathfashions.co.uk via browser during Phase 5, save to `context/brand-assets/logo.png`.

---

## Phase 1 — Commentary Log System

### Problem
Current memory logs (`context/memory/YYYY-MM-DD.md`) track work done but aren't structured for report commentary pull. The report needs: what was done → why → expected outcome → what happened.

### Solution: Monthly Report Log
Create a new file per client: `context/report-log/YYYY-MM.md`

Structure per entry:
```
## [Date] [Short title]
**What:** [action taken]
**Why:** [reason / data trigger]
**Expected:** [anticipated outcome]
**Result:** [filled in at report time — actual outcome]
```

**Population method:**
1. At report-build time, pull entries from this file for the report month
2. Also trawl `context/account-changelog.md` for the period (automated change history)
3. Also scan `context/memory/` logs for the month for any unlisted actions

**Ongoing habit:** After every significant skill run or change, add an entry to the current month's report-log. We will also mention this in the report-generator instructions as a prerequisite step.

---

## Phase 2 — Monthly Performance Report Template

### New template type: `monthly-performance-report`
Added to: `C:\Users\drew\luna\.claude\skills\report-generator\reference\`
New file: `section-monthly-performance.md`
New entry in: `report-registry.json`

### Report layout (top to bottom)

**Header**
- White top bar: client logo right, report title + period left (green text)
- Dark green accent strip below header
- Logo file: `created/reports/Logos/Allure - Logo Large.jpg` (white background — white header avoids clash)

**Section 1 — Primary KPI Cards (6 boxes)**
Cost | Revenue | ROAS | New Customer % | Conversions | Average Order Value
- Cost first — immediate context for any dramatic changes that follow
- Each card: metric value, Month on Month delta (% + arrow), Year on Year delta
- Green = positive direction for that metric, red = negative
- New Customer % card: shows "Pending Setup" badge until new_customer tracking live; target note "Target: 80% new customers"
- No CPA — redundant for ecom when ROAS covers efficiency
- No Returning Customer % — assumed to be remainder of New Customer %
- No Impression Share — operational, not client-facing
- No Brand vs Non-Brand split — brand campaign is £5/day protection only, split misleads

**Section 2 — Period Comparison Tables**
Single table with both comparison columns:
Metric | This Month | Previous Month | Month on Month Change | Same Month Prior Year | Year on Year Change

Primary rows: Cost, Revenue, ROAS, New Customer %, Conversions, Average Order Value
Supporting rows (subtier): Clicks, Impressions, CTR, Average CPC, Conversion Rate

No abbreviations in metric labels except: ROAS, CTR (industry standard)
Write in full: "Average CPC", "Conversion Rate", "Average Order Value", "Year on Year", "Month on Month"
No "pp" for percentage changes — write actual values (e.g. "+41 percentage points" or show as delta %)

**Section 3 — Commentary**
Sourced from `context/account-changelog.md` + `context/memory/YYYY-MM-DD.md` logs trawled at report time
Structure:
- **Account overview** (2-3 sentences on the month overall)
- **What we did** (action + why + expected outcome per significant change)
- **What happened** (actual outcome vs expectation)
- **Next month focus** (1-3 priorities)

**Section 4 — Campaign Breakdown**
Table: Campaign | Revenue | ROAS | Conversions | Cost | Average Order Value | Month on Month Revenue change
No CPA column

**Section 5 — Top Performing Products**
Source: Google Ads `shopping_performance_view`
Columns: Product | Conversions | Revenue
Top 10-15 products. No Clicks, no ROAS, no "Google Ads attributed" label in table.
Mention data source once in section intro text on first report only.

**Section 6 — Supporting Metrics**
Clicks, Impressions, CTR, Average CPC, Conversion Rate — shown but not headlined
Device breakdown: REMOVED entirely

---

## Phase 3 — Data Sourcing

All performance data pulled via Google Ads MCP (`mcp__google-ads__google-ads-download-report`) at report-build time.

Required GAQL queries:
1. **Campaign performance** — last month + previous month + same month prior year
   - Segments: campaign, date range
   - Metrics: cost, conversions, conversion_value, clicks, impressions, average_cpc, search_impression_share
2. **Shopping product performance** — last month
   - Resource: `shopping_performance_view`
   - Metrics: clicks, conversions, conversion_value by offer_id / title
3. **New customer conversions** — last month (once tracking live)
   - Custom conversion action or new_customer parameter

---

## Phase 4 — Prerequisite Audit Check

The existing report-generator also offers audit sections. Before running, check what's been done:

**Allure** — audits available: account ✓, bidding ✓, search-term ✓, tracking ✓
Missing (not blocking monthly report, but note for future full audit reports): lp, offer, strategy, QS, placement, geo-schedule, competitive, keyword, budget

**Misona** — audits available: search-term ✓, tracking ✓, strategy ✓, offer ✓
Missing: account, lp, QS, placement, geo-schedule, competitive, keyword, bidding, budget

For the monthly performance report these audits are NOT required — the report pulls live performance data directly. Audits feed the separate audit report capability.

---

## Phase 5 — Implementation Order

1. Update `brand.json` → green scheme
2. Get Allure logo from user → save to `context/brand-assets/`
3. Create report-log template + backfill May 2026 entries from memory logs + account-changelog for both clients
4. Build `section-monthly-performance.md` template
5. Update `report-registry.json` to include monthly-performance type
6. Update SKILL.md with monthly-performance report instructions + data pull steps
7. Run first report for Allure (May 2026 data)
8. Run first report for Misona (May 2026 data)

---

## Report Design Decisions (updated after second review)

- **Colour scheme revised** - shift to warm forest greens, away from bright/blue-tinted greens:
  - Primary: `#1B4332` (deep warm forest green)
  - Accent/mid: `#40916C` (muted sage-green, warm not blue)
  - Light tint: `#D8F3DC` (softer mint, less saturated)
  - Border: `#95D5B2`
- **Bold current month column** - the reporting period's data column (e.g. May 2026) is bold throughout all tables. Draws the eye to what matters.
- **No flowery PPC language** - overview stays honest and data-driven. "So what" insights only (e.g. "growth came from more orders, not larger baskets"). Never "reaching broader, more engaged audiences" type filler.
- **Competitor Auction Insights** - pull data monthly via GAQL (`auction_insight` resource). Only write commentary when a competitor makes a notable move. Never include just to fill space. Goes in the overview or as a brief commentary note when relevant.
- **Commentary philosophy** - punchy and honest always. Never pad to fill space. Short months get short commentary focused on: (a) whether prior changes played out as expected, (b) what we're watching and why, (c) questions the data raises. Do not make up content.

## Report Design Decisions (from sample review)

- **% not "percentage points"** - use % symbol throughout, including for ROAS and CTR deltas
- **Gap row after Average Order Value** in the primary/supporting comparison table - visual separator, not a section header
- **Duplicate supporting metrics table removed** - only one comparison table, with primary + supporting rows in it
- **Em dashes banned** - hyphens only in all report content. No exceptions. This applies to campaign names, commentary, everything.
- **Logo size** - 80px height in screen, 70px in print
- **Header structure** - white top bar (logo right, title left), dark green accent strip below. Logo on white background, no clash.
- **Commentary tone** - conversational and flowing. Not staccato bullet-to-bullet. Connect the narrative between points where possible.
- **Top products** - sorted by revenue descending. Columns: Product, Conversions, Revenue only.
- **Print instructions banner** - yellow notice on screen (hidden in print) reminding user to uncheck "Headers and footers" and check "Background graphics" in Chrome print dialog.
- **Colour rendering** - use `print-color-adjust: exact` in print CSS. Green accent shifted from #16A34A to #15803D (less saturated, survives PDF rendering better).
- **PDF delivery** - Chrome print with headers/footers off. File names in PDF headers are a Chrome default - user must disable via "More settings" in print dialog.
- **Email delivery** - embed logo as base64 data URI in the HTML so the file is fully self-contained. No external references, no local path dependency. Do this for the sample too so email delivery can be tested immediately.
- **Logo** - find a larger horizontal version from allurebathfashions.co.uk website (via Chrome DevTools or WebFetch). The current square logo is too small and not ideal for a header. Horizontal lockup works better in the header layout. Embed whichever version is highest resolution.

## Decisions Confirmed

- **Products source:** Google Ads `shopping_performance_view` only (ad-attributed). No GA4 dependency.
- **Commentary:** Trawl `account-changelog.md` + `context/memory/` logs at report time. No separate ongoing log file needed. Claude synthesises commentary from both at build time.
- **Commentary instructions:** Live in `.claude/rules/monthly-report-guide.md` — not in SKILL.md (which may be auto-updated by team/agents).
- **Report format:** HTML output → user opens in Chrome → Ctrl+P → Save as PDF → email to client. Lowest Claude resource, client gets PDF.
- **Email delivery:** User reviews report first, then approves Claude to send via Gmail (connected as a task). Not automated — user-gated.
- **Data scope:** Google Ads only for all clients. Exception: Surrey Fire gets Google Ads + Microsoft Ads (separate report structure, tackled after Allure/Misona template is done).
- **New Customer % — Allure:** new_customer tracking not yet live. Section renders with "Pending setup" placeholder until GTM tag + Shopify pixel are configured.
- **Allure logo:** Pull from allurebathfashions.co.uk via browser during Phase 5.
- **Misona May 2026:** PMax and Shopping have full month data. Brand + Beach Towels campaigns went live May 28 — note partial data for those two in commentary, don't skip the report.

---

## Verification

- Open generated HTML in Chrome — check layout, colours, logo render
- Verify MoM and YoY numbers match raw GAQL query output
- Commentary section reads clearly and references real changes made
- Chrome Print → Save as PDF — confirm clean pagination, no cutoff tables
- Repeat for Misona with correct logo + account ID
