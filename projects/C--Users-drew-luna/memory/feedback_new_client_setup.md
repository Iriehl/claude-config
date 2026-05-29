---
name: New client setup process
description: How to onboard a new client to the luna hub — steps and what to copy from contrelle
type: feedback
originSessionId: 9609fcb6-3b1c-495c-8f5b-847498a4a1f1
---
When adding a new client, always do all of the following in order:

1. Add entry to main-config.json (name, displayName, website, googleAdsCustomerId, enabled)
2. Run `ppcos init {client-name}`
3. Copy `clients/contrelle/config/.env` → `clients/{name}/config/.env`
4. Delete `clients/{name}/config/.env.example`
5. Update `clients/{name}/config/ads-context.config.json` (customerId, loginCustomerId, clientName, conversionActions, competitors.domains, competitors.location_code)
6. Copy full `settings.local.json` from contrelle, replacing client-specific WebFetch domain
7. Set biddingStrategy: roas for ecom clients, cpa for lead gen (both searchTermAnalysis and ngramAnalysis sections)

**Why:** User confirmed this is the complete process after auditing all three clients added in this session (allure, misona, surrey-fire).

**How to apply:** Use this checklist whenever /add-client or manual client onboarding is requested. Don't wait to be asked about each step.

Shared MCC across all clients: 2284398748
Client folder names must be lowercase with hyphens (no spaces) — e.g. surrey-fire not "Surrey Fire".
displayName in main-config.json can have spaces and proper casing.
