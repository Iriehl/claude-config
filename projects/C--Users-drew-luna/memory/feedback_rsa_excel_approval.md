---
name: rsa-excel-approval
description: Every RSA creation run must also produce a client approval Excel file using generate-excel.py — globally across all clients
metadata: 
  node_type: memory
  type: feedback
  originSessionId: f9d4bd53-8b3e-4c9b-807d-c0e8dabecd42
---

Every time RSAs are created via `/rsa-maker`, also generate an Excel approval file. NOTE: ppcos v1.3.1 (updated 2026-06-05) removed this step from SKILL.md — the Excel step must be run manually after the skill completes.

**Why:** Client-facing approval needs a formatted Excel, not just a CSV. Built 2026-05-27 during Misona Brand + Beach Towels batch.

**How to apply:**
- The SKILL.md no longer includes the Excel step as of v1.3.1 — add it manually after the skill runs
- After running generate-csv.py (Step 7.2), run generate-excel.py with the same JSON input BEFORE deleting the JSON
- Command: `python3 .claude/skills/rsa-maker/scripts/generate-excel.py <ads-json> <output-approval.xlsx> [extensions-json]`
- Extensions JSON (sitelinks, callouts, snippets) is optional third argument
- Script lives at `.claude/skills/rsa-maker/scripts/generate-excel.py` in every client folder
- Output: `created/rsas/{timestamp}_{campaign}-approval.xlsx`

**Template rules (never change these):**
- Colours: fixed muted-green scheme (C_EXT_BG #6B9F6B dark, C_SUBHD #D8F0D8 pale, C_PREVIEW_BG #DCF0DC, C_LABEL_BG #E0EEE0)
- Never use client brand colours in the template
- Logo only: drop `context/brand-assets/logo.jpg` (or `.png`) — script auto-detects it, no argument needed
- If no logo file exists, Excel generates fine with an empty logo cell

**Extension two-colour pattern:**
- Section header row: dark green (C_EXT_BG)
- Sub-row / first data row: pale green (C_SUBHD) spanning A to last ad column
- Sitelinks: pale row has "Title / Description Line 1 / Description Line 2 / URL" labels
- Structured snippet: "Types" label sits ON the pale row (no separate blank row)
- Callouts: first callout item gets pale row fill (no sub-header label, just the colour for visual consistency)
