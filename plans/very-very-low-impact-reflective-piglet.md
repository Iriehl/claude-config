# Plan: Surrey Fire — Account Bloat Reduction (Editor Load Speed)

## Context

1.5M keywords/negatives is causing Google Ads Editor to be unusable mid-day. Root cause is almost certainly old SKAG structure: each keyword gets its own ad group + match-type exclusion negatives (2-4 per ad group). At scale, 100K ad groups × 3 negatives = 300K negatives from structure alone. Add historical paused/removed campaigns and out-of-scope service ad groups and you hit millions fast.

**Will it actually help Editor load time?** Yes. Editor downloads the full account to a local SQLite file. Fewer entities = smaller sync payload = faster load. Deleting paused/removed ad groups (and their keywords + negatives) is the highest-leverage cut because those entities are already inactive — zero performance risk.

---

## What We're NOT Doing

- Touching any active, in-scope campaign keywords
- Removing shared negative lists (those are intentional — 6 lists confirmed live)
- Making changes via Editor (defeats the purpose)

---

## Approach

### Phase 1 — Diagnose (data pull via MCP)

Pull counts to understand where the bloat lives:

1. Ad groups by status (ENABLED / PAUSED / REMOVED) × campaign — to find dead weight
2. Keyword count per campaign (to see which campaigns hold the bulk)
3. Negative count at ad group level (this is where SKAG negatives live)

GAQL queries needed:
- `SELECT campaign.name, ad_group.name, ad_group.status FROM ad_group` (count by status)
- `SELECT campaign.name, metrics.cost_micros FROM campaign WHERE campaign.status != 'REMOVED'` (active campaigns only)

### Phase 2 — Identify Cut Candidates

Rank by volume, cut in this order:
1. **Paused/removed ad groups** in paused/removed campaigns — safe to permanently delete
2. **Out-of-scope service ad groups** (risk assessments, training, emergency lighting, compartmentation, passive fire protection — confirmed not in PPC scope per business.md)
3. **SKAG ad groups with zero impressions ever** — structural dead weight
4. **Duplicate ad-group-level negatives** that are already covered by shared lists

### Phase 3 — Execute via API Script

Not Editor. Write a Node.js script (same pattern as existing query.js) that:
- Accepts a list of ad group resource names
- Calls `AdGroupService.mutate` with `REMOVE` operations in batches of 1,000
- Logs what was removed to `context/memory/YYYY-MM-DD.md`

Output a preview CSV first (what *would* be removed) before running the actual removes.

---

## Critical Files

- `C:\Users\drew\luna\clients\surrey-fire\.claude\skills\gads-context\scripts\query.js` — pattern for MCP/API calls
- `C:\Users\drew\luna\clients\surrey-fire\context\google-ads\data\adgroups.csv` — current ad group snapshot (only 12 rows — stale, needs refresh)
- `C:\Users\drew\luna\clients\surrey-fire\context\business.md` — confirms which 5 service lines are in scope

---

## Verification

1. Run Phase 1 queries → confirm bloat source matches SKAG hypothesis
2. Review preview CSV before any removals
3. After removal script runs: re-sync Editor and compare load time
4. Check active campaign performance next day (no impact expected since we only remove paused/removed entities)

---

## Open Question

The `adgroups.csv` in context only has 12 rows — clearly a limited pull. Before we can size the cuts, we need a fresh full pull of all ad groups with status. Phase 1 MCP query is the mandatory first step.
