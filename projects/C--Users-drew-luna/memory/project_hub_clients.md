---
name: Hub Client Roster
description: All clients in the luna hub, their IDs, type, and setup status
type: project
originSessionId: 9609fcb6-3b1c-495c-8f5b-847498a4a1f1
---
Hub root: C:\Users\drew\luna
Main config: C:\Users\drew\luna\main-config.json
Shared MCC: 2284398748 (all clients use the same MCC)
Credentials: all clients share the same .env (copied from contrelle)

## Clients

### contrelle
- Customer ID: (not stored — check ads-context.config.json)
- Type: unknown (original client, pre-dates this setup)
- Status: active, fully set up

### allure
- Customer ID: 3585452819
- Website: https://allurebathfashions.co.uk/
- Type: ecom — biddingStrategy: roas
- Primary conversion: Purchase (1) — other actions in account need pausing/removing
- Location: UK (2826)
- Status: /ads-context-gatherer DONE (2026-04-25), business.md populated, needs /gads-context
- See project_allure_account.md for full campaign/budget/issue context

### surrey-fire
- Customer ID: 7742356302
- Website: https://surreyfire.co.uk/
- Type: lead gen — biddingStrategy: cpa
- Primary conversions: Call Conversions (Website), Calls from ads (Extension), Contact Form Submit, Phone Call, Phone Number Click
- Location: UK (2826)
- Status: core onboarding COMPLETE (2026-04-23) — reporting setup blocked on Microsoft Ads API
- Also runs Microsoft/Bing Ads — API setup in progress (see project_microsoft_ads_setup.md)
- Google Ads customer ID confirmed: 7742356302
