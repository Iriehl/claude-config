---
name: Always use MCP for Surrey Fire data pulls
description: The config/.env developer token is test-only; MCP must be used for all Google Ads data on this account
type: feedback
originSessionId: 4fa06a1f-190e-43cf-a698-12cc6793ba70
---
Always use the Google Ads MCP (`mcp__google-ads__google-ads-download-report`) for all data pulls on the Surrey Fire account. Never attempt to run `scripts/run-all.js` or `scripts/query.js` via the terminal — they will fail with an auth error because the dev token is test-only.

**Why:** The developer token in `config/.env` only grants access to test accounts. Surrey Fire is a live production account. The MCP server uses separate user-scoped OAuth credentials that do have production access.

**How to apply:** Any time a query is needed — gads-context re-run, ad-hoc MCP lookup, auditor data pull — use `mcp__google-ads__google-ads-download-report` with `customerId: 7742356302` and `loginCustomerId: 2284398748`. Skip the batch runner entirely.
