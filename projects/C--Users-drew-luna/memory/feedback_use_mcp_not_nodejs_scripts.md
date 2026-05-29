---
name: Google Ads API - MCP preferred, Node.js scripts available
description: Prefer MCP for Google Ads data pulls (fewer tokens/thinking steps). Node.js skill scripts work but use only when MCP can't handle the query (e.g. change_event, complex GAQL).
type: feedback
originSessionId: ee50fa9e-fe7c-48e9-ba11-2ed82d03b0c4
---
**Preferred approach:** Use the Google Ads MCP (`mcp__google-ads__google-ads-download-report`) for all data pulls where possible. It's faster and uses fewer thinking steps than Node.js scripts.

**When to use Node.js scripts:** Only when MCP can't handle the query — e.g. `change_event` resource, or skill scripts that run multi-step pipelines (gads-context, account-changelog fetch step).

**Token status:** Developer token has Basic access. Refresh token may expire and need regenerating — see [[Google Ads Refresh Token]] memory if auth fails with `invalid_grant`.
