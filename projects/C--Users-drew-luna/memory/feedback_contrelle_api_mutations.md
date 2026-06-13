---
name: contrelle-api-mutations
description: "Google Ads REST API mutations don't work with Contrelle local .env credentials — use UI for small changes"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 4e7b47b0-dc04-40b6-b455-8a15ddb5573c
---

REST API mutations (POST to googleads.googleapis.com) return 404 for Contrelle when using credentials from `config/.env`. The local developer token appears to be a Basic/test token that only works via the google-ads-api gRPC library, not the raw REST API.

**Why:** Tested 2026-05-30. Even a read (searchStream) returned 404 via REST. The MCP (`mcp__google-ads__google-ads-download-report`) uses its own auth (ppcos gateway) and works fine for reads. No mutation tool exists in the MCP.

**How to apply:** For small account changes (add keyword, add negative, apply audience), give UI instructions rather than writing a script. Only pursue scripted mutations if the task is bulk (>20 items) and warrants the setup cost of fixing the developer token. Script infrastructure does not exist for Contrelle — no mutation scripts, no google-ads-api npm package installed in the project.

Contrelle customer ID: 4839774980 (loginCustomerId same — standalone account, no MCC wrapper needed).
