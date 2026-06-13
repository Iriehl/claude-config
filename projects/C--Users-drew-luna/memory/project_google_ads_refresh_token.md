---
name: Google Ads Refresh Token
description: When the refresh token was last regenerated and how to do it again
type: project
originSessionId: b4ff4a23-9a3e-4f75-b4e0-163eb79f8ec5
---
Refresh token last regenerated: 2026-06-08.

Current token: [stored in .env files only - never commit token values]

**Why:** Google OAuth refresh tokens can expire or be revoked, causing API auth failures across all Google Ads scripts and skills.

**How to apply:** If Google Ads API calls start failing with auth errors, the token likely needs regenerating. Run:

```
node generate-refresh-token.cjs
```

from the luna root directory (`C:/Users/drew/luna`). Then update `GOOGLE_ADS_REFRESH_TOKEN` in all 5 locations:
- `C:/Users/drew/luna/.env`
- `C:/Users/drew/luna/clients/allure/config/.env`
- `C:/Users/drew/luna/clients/contrelle/config/.env`
- `C:/Users/drew/luna/clients/misona/config/.env`
- `C:/Users/drew/luna/clients/surrey-fire/config/.env`
