---
name: Microsoft Ads API Setup
description: Microsoft Advertising API credential setup — fully complete, SOAP skill operational for Surrey Fire
type: project
originSessionId: a28177e9-65be-46dd-ae6a-9c790e30c152
---
Setup goal: pull Microsoft Ads data for reporting alongside Google Ads. Surrey Fire runs Bing Ads as a significant channel. Contrelle may also expand in future.

## Status: COMPLETE (2026-04-24)

All credentials configured, OAuth complete, `mads-context` skill pulling all 7 reports successfully.

## Azure App Registration

App name: **PPCOS Bing Ads**
- Application (Client) ID: `f22c609e-0348-4577-a60e-5300a96f551d`
- Directory (Tenant) ID: `3190e53f-dd06-48ef-9954-0bb570751992`
- Supported account types: "Accounts in any organizational directory + personal Microsoft accounts" (multi-tenant + personal — required for gmail OAuth)
- Redirect URI: `http://localhost` (Web platform) — shows "can't reach" page but auth code appears in URL bar
- Client Secret: stored in `config/.env` as `MICROSOFT_ADS_CLIENT_SECRET`

**Key gotcha:** App must support personal accounts (not "Multiple organizations" only) or gmail login is blocked with "can't sign in with a personal account."

**Manifest fix required:** `requestedAccessTokenVersion` must be set to `2` in the app manifest before personal account OAuth works.

## Account IDs — Surrey Fire

- Manager account ID: `21128225`
- Client account ID: `50029484`
- Developer Token: in `config/.env` as `MICROSOFT_ADS_DEVELOPER_TOKEN`

## Credentials Location

All 6 credentials live in `config/.env` under the surrey-fire project:
```
MICROSOFT_ADS_DEVELOPER_TOKEN
MICROSOFT_ADS_CLIENT_ID
MICROSOFT_ADS_CLIENT_SECRET
MICROSOFT_ADS_REFRESH_TOKEN
MICROSOFT_ADS_MANAGER_ACCOUNT_ID
MICROSOFT_ADS_CLIENT_ACCOUNT_ID
```

**Refresh token expiry:** ~90 days of inactivity. If auth fails, re-run the OAuth flow:
1. Visit: `https://login.microsoftonline.com/common/oauth2/v2.0/authorize?client_id=f22c609e-0348-4577-a60e-5300a96f551d&response_type=code&redirect_uri=http%3A%2F%2Flocalhost&scope=https%3A%2F%2Fads.microsoft.com%2Fmsads.manage+offline_access&state=12345`
2. Sign in with drew.win.digital@gmail.com, accept the permissions
3. Copy the `code=` value from the URL bar (localhost will error — that's expected)
4. Exchange via POST to `https://login.microsoftonline.com/common/oauth2/v2.0/token` with grant_type=authorization_code
5. Update `MICROSOFT_ADS_REFRESH_TOKEN` in `config/.env`

## Architecture

Microsoft Ads uses same manager/client hierarchy as Google Ads MCC:
- Manager account = like Google MCC (holds the developer token)
- Client account = actual ad account per client
- API calls are authenticated via manager account but scoped to client account

## Adding a New Bing Client

Copy the 6 `MICROSOFT_ADS_*` env vars into the new client's `config/.env`, updating only `MICROSOFT_ADS_CLIENT_ACCOUNT_ID`. The developer token, client ID/secret, and refresh token are shared across clients (they're tied to the manager account and the Azure app, not the individual client).
