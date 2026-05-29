---
name: feedback-gads-editor-vs-api
description: Use API scripts over Google Ads Editor for Surrey Fire — Editor takes too long to load due to 1.5M keyword account size
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 6ccc121f-1eca-468f-93cc-514277b01407
---

Surrey Fire's Google Ads account has ~1.5M keywords/negative keywords (mostly SKAG routing negatives + legacy paused geo-split campaigns). Editor takes an age to load and sync.

**Rule:** Default to API scripts for any bulk operation on this account. Only suggest Editor as a fallback if a write API script doesn't exist yet.

**Why:** Editor sync time is prohibitively slow on accounts this large. API is instant.

**How to apply:**
- Creating/updating negative keyword lists → use `create-negative-lists.js` pattern (mutateResources API)
- Bulk keyword adds/removes → write a script rather than suggesting Editor import
- UI is fine for 1–2 item changes only (quick fixes)
- If a bulk operation needs doing and no script exists, offer to write one first

**Write API pattern for Surrey Fire:**
Uses `google-ads-api` npm package in `.claude/skills/gads-context/scripts/`.
Auth: credentials from `config/.env` via dotenv. Customer ID from `config/ads-context.config.json`.
Write operations: `customer.mutateResources([{ entity, operation, resource }])`.
Always support `--dry-run` flag and verify via API query after applying.

[[Surrey Fire Negative Structure]]
