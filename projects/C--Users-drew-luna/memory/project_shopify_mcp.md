---
name: project-shopify-mcp
description: Shopify MCP server setup for Misona and Allure in Claude desktop app
metadata: 
  node_type: memory
  type: project
  originSessionId: 1d543a5a-eb12-4ac2-ad44-a243885ec877
---

Both Shopify MCP servers working as of 2026-06-01.

## Working Setup

MCP servers added via `claude mcp add` command. Package: `shopify-mcp` (community, npm).
Tokens obtained via manual OAuth exchange (Partners Dev Dashboard app + code exchange).

### Misona
- Store: misona-uk.myshopify.com
- Package: `shopify-mcp`
- Env var: `MYSHOPIFY_DOMAIN=misona-uk.myshopify.com`
- Token: [REDACTED - shpat_ format, stored in MCP config]
- Partners App Client ID: `0c3ff065cbac950c14fa884be1ac135d`
- Partners App Secret: [REDACTED - stored in MCP config]

### Allure
- Store: allure-bath-fashions.myshopify.com (NOT testallurebathfashions)
- Package: `shopify-mcp`
- Env var: `MYSHOPIFY_DOMAIN=allure-bath-fashions.myshopify.com`
- Token: [REDACTED - shpat_ format, stored in MCP config]
- Partners App Client ID: `286870e3f584e08d677cd34e1c31541d`
- Partners App Secret: [REDACTED - stored in MCP config]

## To Restore After Any Reinstall

Tokens are stored in the Claude MCP config (check `claude mcp list` or the desktop app settings).

Run in PowerShell (substituting tokens from MCP config):

```powershell
claude mcp add shopify-misona -e MYSHOPIFY_DOMAIN=misona-uk.myshopify.com -e SHOPIFY_ACCESS_TOKEN=[MISONA_TOKEN] -- npx -y shopify-mcp
claude mcp add shopify-allure -e MYSHOPIFY_DOMAIN=allure-bath-fashions.myshopify.com -e SHOPIFY_ACCESS_TOKEN=[ALLURE_TOKEN] -- npx -y shopify-mcp
```

## If Token Expires (How to Refresh)

1. Open in browser: `https://misona-uk.myshopify.com/admin/oauth/authorize?client_id=0c3ff065cbac950c14fa884be1ac135d&scope=read_products,read_orders,read_customers,read_inventory,write_products&redirect_uri=https://example.com&state=abc123`
2. Browser redirects to `https://example.com?code=XXXX` - copy the code value
3. Run: `curl -X POST "https://misona-uk.myshopify.com/admin/oauth/access_token" -H "Content-Type: application/json" -d '{"client_id":"0c3ff065cbac950c14fa884be1ac135d","client_secret":"[MISONA_APP_SECRET]","code":"XXXX"}'`
4. Repeat for Allure with its client_id/secret and allure-bath-fashions.myshopify.com

## Key Lessons
- atkn_ automation tokens do NOT work with community MCP packages (Bearer auth vs X-Shopify-Access-Token header)
- Legacy custom apps blocked since Jan 2026 - must use Partners Dev Dashboard
- Correct Allure domain is allure-bath-fashions.myshopify.com (not testallurebathfashions)
- shopify-mcp package uses MYSHOPIFY_DOMAIN (not SHOPIFY_STORE_URL)
