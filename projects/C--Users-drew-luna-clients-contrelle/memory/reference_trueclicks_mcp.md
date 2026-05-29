---
name: TrueClicks / gaql.app Google Ads MCP — location and config
description: Where the TrueClicks MCP server is configured and how to verify it — user-scoped, not project-scoped
type: reference
originSessionId: 0b839c74-a5d6-47b4-b0c5-6a06124ccf1f
---
The `google-ads` MCP server (TrueClicks / gaql.app) is configured at **user scope**, not project scope.

- It will NOT appear in `.mcp.json` or `settings.local.json` in any client project directory
- It will NOT appear in `~/.claude/settings.json`
- To verify it's active: run `claude mcp list` — it shows as `google-ads: https://mcp.gaql.app/sse/google-ads/...`
- To add/re-add it: `claude mcp add --transport sse -s user google-ads "https://mcp.gaql.app/sse/google-ads/YOUR-TOKEN"`

Tools exposed: `mcp__google-ads__list-accounts`, `mcp__google-ads__google-ads-download-report`

Confirmed working: 2026-04-21
