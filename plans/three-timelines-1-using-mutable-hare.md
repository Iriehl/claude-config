# Plan: Beginning-of-Month Spend Push Analysis

## Context

Client believes customers spend more at the start of the month. In 2025 the account deliberately pushed 30% additional budget in the first two weeks of each month. Pre-2025 (2023-2024) spend was reactive — tried to stay flat but often increased budgets because Google wouldn't spend. Since 2026 the strategy reverted to flat spend. The client is asking: was the 30% push worth it, and should we do it again?

**The core question:** Do higher first-half spend months produce more total revenue, or does the timing of spend not matter?

---

## Three Periods

| Period | Strategy | Date Range |
|--------|----------|------------|
| Pre-push | Reactive / flat attempts | Jan 2023 – Dec 2024 |
| Push | ~30% extra in first 2 weeks | Jan 2025 – Dec 2025 |
| Post-push | Flat spend (current) | Jan 2026 – present |

---

## Phased Execution (one pull per session)

### Phase 1 — Monthly performance baseline (first pull)
Pull monthly aggregated campaign data across the full date range using a custom GAQL query via MCP.

**Query target:** Account-level (or campaign roll-up), `segments.month`, Jan 2023 – May 2026  
**Metrics:** cost, conversions_value, conversions, clicks, impressions  
**Output:** `context/analysis/monthly-performance-2023-2026.csv`

From this we can see: total monthly revenue by period, spend levels, ROAS trend over time, and whether 2025 months were materially different from 2024/2026.

### Phase 2 — Day-of-month spend distribution (second pull)
Pull daily account-level data for 2025 (and 2024 as a baseline year for comparison).

**Query target:** Account or campaign, `segments.date`, full year 2025 + 2024  
**Metrics:** cost, conversions_value, conversions  
**Output:** `context/analysis/daily-performance-2024-2025.csv`

From this we can answer: did Google actually spend more in days 1–14 vs days 15–31 during the push period? What fraction of each month's revenue came in the first half? Did the push shift spend timing at all?

### Phase 3 — Analysis and synthesis
Using Phases 1 and 2 outputs:

1. **Did the push actually land?** For each 2025 month, compare days 1–14 spend share vs equivalent 2024 months. If Google didn't respond to the increased budgets, the "push" was in name only.

2. **Revenue outcome by period:** Compare average monthly conv_value across the three periods. Adjust for seasonality by comparing YoY equivalent months (e.g., Jan 2025 vs Jan 2024).

3. **ROAS efficiency:** Was ROAS higher or lower during push months vs flat months? Higher spend doesn't mean better returns.

4. **Conclusion framework:**
   - If 2025 first-half months show higher rev AND better ROAS → push is worth it
   - If rev is similar but ROAS is lower during push months → flat is more efficient
   - If Google didn't actually spend the extra budget → the strategy was never tested properly

**Output:** `context/analysis/spend-timing-analysis.md` — client-ready summary with tables and a clear recommendation

---

## Critical Files

- `context/business.md` — targets, budget, account context (already read)
- `context/google-ads/data/campaigns.csv` — 30-day baseline for current state
- `context/analysis/monthly-performance-2023-2026.csv` — created in Phase 1
- `context/analysis/daily-performance-2024-2025.csv` — created in Phase 2

---

## GAQL Reference

**Phase 1 query (monthly roll-up):**
```sql
SELECT campaign.name, segments.month, metrics.cost_micros,
       metrics.conversions_value, metrics.conversions,
       metrics.clicks, metrics.impressions
FROM campaign
WHERE segments.date BETWEEN '2023-01-01' AND '2026-05-13'
ORDER BY campaign.name, segments.month
```

**Phase 2 query (daily detail):**
```sql
SELECT segments.date, metrics.cost_micros,
       metrics.conversions_value, metrics.conversions
FROM customer
WHERE segments.date BETWEEN '2024-01-01' AND '2025-12-31'
ORDER BY segments.date
```

---

## Approach Notes

- Work through phases sequentially — don't pull all data upfront
- After each phase, analyse before proceeding to next pull
- No approval requests between phases — just work through it and report findings
- Final deliverable is a concise markdown report in `context/analysis/` ready to inform the client meeting
