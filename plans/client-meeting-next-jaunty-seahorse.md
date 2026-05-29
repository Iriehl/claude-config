# Allure Account Validation — Client Meeting Prep

## Context

Client meeting in ~4 days. The goal is to replace every number in `context/business.md` (tROAS targets, ROAS baselines, AOV, CVR, revenue figures) with live-pulled, tagged **VALIDATED** figures. Every number currently in the file is suspect — entered during onboarding, from old reports, or from 30-day snapshots during what may be a performance dip. We need ground truth before the meeting.

Secondary goal after validation: challenge whether the current 4-campaign structure (split PMax + Standard Shopping + Brand) is still the right approach given 2026 budget and product catalogue.

---

## Answers to Your Questions

### Ultraplan / Plan modes

There is no "ultraplan" toggle. You may be thinking of `/ultrareview`, which is a multi-agent cloud code review for GitHub PRs — not relevant here. Plan mode is what we're in now: I design a plan before executing. Normal conversation is just execution with no upfront design step. There are only two modes. Nothing to enable.

### Should we split into two sessions?

**Yes — strongly recommended.** Here's why it's better:

- **Session A** pulls and validates all numbers. Those validated figures then live in saved files.
- **Session B** opens with clean context, reads the validated files, and does the strategy / campaign restructure work.
- If we try to do both in one session, by the time we get to strategy analysis the context window will be carrying all the raw data we pulled and thinking from Session A. We lose coherence. The strategy work gets worse quality output because the model is context-saturated.
- The data we need for strategy (validated AOV, ROAS history, product performance) is exactly what Session A produces and saves. No work is duplicated.

### Low-impact session efficiency — what to tell me

When you want minimal token/context load, say: **"tight mode"**. That means:

- One MCP query at a time — I confirm what I found, then move to the next
- I save a checkpoint file every 3-4 queries before continuing
- No large CSV dumps into the conversation — I read them and write a summary only
- If a data pull produces more than ~50 lines of output, I summarise the key rows and save the rest
- I tell you when context is getting heavy and suggest a save + restart

---

## Numbers to Validate (in order of priority)

These are the specific claims in `business.md` that need a fresh live pull and a **VALIDATED** tag:

| # | Field | Current Value | Source | How to Validate |
|---|-------|---------------|--------|-----------------|
| 1 | tROAS — Brand | 750% | API (May 2026) | MCP: bidding strategies |
| 2 | tROAS — PMax 20% Best | 550% | API (May 2026) | MCP: bidding strategies |
| 3 | tROAS — PMax 80% Other | 500% | API (May 2026) | MCP: bidding strategies |
| 4 | tROAS — Standard Shopping | 500% | API (May 2026) | MCP: bidding strategies |
| 5 | Budget per campaign | £150/£600/£600/£450 | business.md entry | MCP: campaign budgets |
| 6 | Brand £5/day cap | £5/day | client stated | MCP: campaign budgets |
| 7 | AOV | £35.05 | 30-day May snapshot | Browser: Shopify analytics |
| 8 | Account ROAS (30d) | 466% | 30-day May snapshot | MCP: campaign performance |
| 9 | Per-campaign ROAS | 629/439/436/499% | 30-day May snapshot | MCP: campaign performance |
| 10 | Brand IS | 9.99% | 30-day May snapshot | MCP: IS report |
| 11 | Shopify total revenue (30d) | £21,700 | Shopify snapshot | Browser: Shopify analytics |
| 12 | Shopify CVR | 2.13% | Shopify snapshot | Browser: Shopify analytics |
| 13 | GMC products approved | 810/810 | GMC snapshot | Browser: GMC |
| 14 | Attribution model | Unknown | Not pulled | MCP: conversion actions detail |
| 15 | Conversion window | Unknown | Not pulled | MCP: conversion actions detail |
| 16 | GA4 monthly users | ~11,000 | Shopify snapshot | Browser: GA4 |

---

## Session A — Data Validation (this session)

### Before starting: confirm stable reference periods

From `context/analysis/monthly-performance-2023-2026.csv` (already read — no pull needed):

- **The dip is real and confirmed.** Mar-May 2026 ROAS: 507/479/472% — all near or below the 500% floor. Revenue: £7.5k-£8.3k/mo
- **The reference period to use:** Nov 2024-Feb 2025. ROAS 663-717%, revenue £6.8k-£9.9k. Pre-brand-cap, pre-PMax-80% launch (mostly). Represents healthy baseline.
- **The concerning pattern:** Q2 2024 revenue (£6.3-£8.2k) vs Q2 2026 (£7.5-£8.3k) — revenue is similar but spend jumped from ~£1k/mo to ~£1.5-1.7k/mo. We're spending ~65% more to get roughly the same revenue. That's the dip story.
- **Challenge:** is this seasonal or structural? Both, but the structural element (ROAS decline per spend level) is the more serious issue.

---

### Phase 1 — Google Ads live data (MCP, targeted)

Pull each of these as a separate MCP query. Save checkpoint after each group.

**Group 1A: Campaign budgets and tROAS targets (2 queries)**
- Campaign budgets (live daily caps and monthly implied)
- Bidding strategies with current tROAS targets

*Save to: `context/analysis/validation-checkpoint-1a.md`*

**Group 1B: Performance (last 30 days, last 90 days — separate queries)**
- Campaign performance last 30 days: impressions, clicks, cost, conversions, conv value, ROAS
- Campaign performance last 90 days: same fields — for comparison to 30-day
- IS data: Brand + Shopping impression share

*Save to: `context/analysis/validation-checkpoint-1b.md`*

**Group 1C: Historical comparison (2 queries)**
- Monthly campaign performance: Jan 2025-May 2025 (PMax split launch period)
- Monthly campaign performance: Nov 2024-Feb 2025 (reference period)

*Save to: `context/analysis/validation-checkpoint-1c.md`*

**Group 1D: Conversion actions**
- Pull conversion action details: attribution model, conversion window, all active actions

*Save to: `context/analysis/validation-checkpoint-1d.md`*

---

### Phase 2 — Shopify (browser)

Open Shopify admin. Pull:
- Last 30-day total revenue, orders, AOV — validate vs £21,700 / £35.05
- Last 90-day total revenue, AOV — for comparison
- CVR (session-to-order rate) — validate vs 2.13%
- Top 10 products by revenue (last 90 days) — needed for PMax consolidation case
- Best seller list vs PMax 20% product group — are the right products in the "best" campaign?

*Save to: `context/analysis/validation-checkpoint-2.md`*

---

### Phase 3 — GMC and GA4 (browser)

**GMC:**
- Product approval count — validate 810/810
- Price competitiveness benchmarks
- Shipping / delivery benchmarks vs competitors

**GA4:**
- 30-day users / sessions
- Channel attribution breakdown (especially "Unassigned" volume — previously flagged as largest channel)

*Save to: `context/analysis/validation-checkpoint-3.md`*

---

### Phase 4 — Update business.md with VALIDATED tags

After all checkpoints are saved, update `context/business.md`:
- Replace each validated number with the fresh figure
- Add `[VALIDATED 2026-05-17]` inline tag after each confirmed value
- Where the live figure differs from what was in the file, note both: `[was: X → now: Y · VALIDATED 2026-05-17]`
- Where a figure couldn't be confirmed, tag with `[UNVALIDATED — needs: source]`
- Add a "Validation run" entry to the Change Log section

**The £1,800/mo budget entry is permanent. Do not change it regardless of what daily spend data shows.**

---

## Phase 5 — Client Data-Request Email

After `business.md` is updated with VALIDATED tags, compile everything tagged `[UNVALIDATED]` or that required client input (e.g. gross margin, LTV, hero product intent, any Shopify figures we couldn't access via browser) into a plain-text client email.

- Saved to: `created/emails/YYYY-MM-DD-allure-data-request.txt`
- Format: plain text, no markdown, no em dashes (copy direct into Outlook)
- Framing: "ahead of our meeting, a few numbers that would sharpen our recommendations" — not a long list, just the gaps that actually change decisions
- Copy to clipboard after saving so it's ready to paste

This goes out before the meeting so there's a chance client responds in time and we can use those figures in Session B.

---

## Session B — Strategy Review (next session)

Opens with: read `context/business.md` (validated), read all checkpoint files, read `context/analysis/monthly-performance-2023-2026.csv`.

**Questions to answer with fresh data:**

1. **PMax consolidation** — with 90-day data in hand, does the case hold? Reference `created/emails/2026-05-17-pmax-consolidation-reference.txt`. Decision: consolidate or keep split.

2. **Budget allocation** — given validated performance per campaign, is £600/£600/£450/£150 still right? Or should spend shift? With brand at £5/day it barely exists as a campaign — is that allocation optimal?

3. **tROAS targets** — given current ROAS sitting near the 500% floor, are the per-campaign targets realistic or are they choking spend? Brand at 750% tROAS with £5/day cap is doubly constrained — is 750% appropriate?

4. **Standard Shopping vs PMax** — Standard Shopping is the most efficient campaign (499% actual vs 500% target, near-perfect). Does it deserve more budget? Does it cannibalise PMax?

5. **Account age / structure** — account is 3+ years old with ~half the original budget and more SKUs. Does the structure need a structural rethink, or just optimisation?

6. **Is there a hero product strategy** — no stated hero products. Top 10 from Shopify (pulled in Session A) may suggest obvious candidates for dedicated campaigns or bid boosts.

---

## Checkpoint Files

| File | Contains | Written after |
|------|----------|---------------|
| `context/analysis/validation-checkpoint-1a.md` | Budgets + tROAS live | Phase 1, Group 1A |
| `context/analysis/validation-checkpoint-1b.md` | 30d + 90d performance | Phase 1, Group 1B |
| `context/analysis/validation-checkpoint-1c.md` | Historical comparison | Phase 1, Group 1C |
| `context/analysis/validation-checkpoint-1d.md` | Conversion action details | Phase 1, Group 1D |
| `context/analysis/validation-checkpoint-2.md` | Shopify revenue, AOV, CVR, top products | Phase 2 |
| `context/analysis/validation-checkpoint-3.md` | GMC + GA4 live | Phase 3 |

If the session is interrupted, next session starts by reading all checkpoint files that exist. Already-completed checkpoints do not need to be re-pulled.

---

## Critical Rules During Execution

- Monthly budget is **£1,800 — permanent**. Do not update it in business.md regardless of what API data shows for daily caps.
- Pull one query group at a time. Confirm findings verbally before moving to the next group.
- If a query fails 3 times, note what failed in the checkpoint file and move on.
- Save the checkpoint file before moving to the next phase — not after.
- Do not bring raw CSV content into the conversation. Summarise findings in 5-10 key rows, write full data to checkpoint files.

---

## Memory Save — Before Execution Starts

Save to permanent memory:
- Monthly budget is £1,800, permanently fixed — do not update from API daily cap data
- Brand campaign is £5/day cap — client restriction, not adjustable without client approval
