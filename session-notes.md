# 2026-05-29

## Git backup setup - IN PROGRESS, needs completion

- luna repo still has NO remote (noted as outstanding since 2026-04-22 - still not done)
- Interrupted GitHub push left no trace locally - git config clean, no remote refs
- GitHub account was renamed - need current username before adding remote
- GitHub CLI (gh) not installed on this machine
- 16+ modified/untracked files not yet committed (including Misona RSAs, Contrelle analysis, Allure memory)
- All work is safe locally for now

**Next session - 3 steps to complete:**
1. User confirms current GitHub username (post-rename)
2. `git remote add origin https://github.com/[username]/luna.git`
3. `git push -u origin main`

---

# 2026-05-28
- Refresh token expired (invalid_grant) — regenerate via `node generate-refresh-token.cjs` from luna root, update in all 5 .env files (see memory: project_google_ads_refresh_token.md)

# 2026-05-21

- statusLine (token/context bar) works in terminal CLI only — desktop app has its own UI chrome and ignores the statusLine config entirely
- Cannot detect terminal vs desktop app from within a session — no env var or signal distinguishes them
- stop-global.sh hook already existed and was already correct — no changes needed
- Context usage visualisation / weekly stats dashboard discussed but not built yet — plan: Stop hook logs session stats to ~/.claude/session-log.jsonl, script renders weekly HTML; on hold pending decision on terminal vs HTML output format

# 2026-04-27

- Google Ads API Basic access granted — developer token `3SmOuhZhDJKsJ31Wq_Sdgw` upgraded in-place, no .env changes needed
- Token already present in root `.env` and all 4 client `config/.env` files (contrelle, allure, misona, surrey-fire)
- Node.js skill scripts (gads-context, account-changelog etc.) were previously blocked with "test accounts only" error — should now work on all real accounts
- Changing API contact email from Gmail won't cause new token or loss of access — but verify with Google before doing it
- Next actions: run gads-context across all clients to refresh data; set up scheduled pulls to keep token active and data current

## Surrey Fire — gads-context pull completed (30 days, 2026-04-27)
- All 9 markdown summaries written to context/google-ads/ (campaigns, adgroups, keywords, ads, search-terms, device-performance, assets, audiences, geo-performance)
- No campaign-level negative keywords exist — all negatives at ad group or shared list level
- IS critically low on all Search campaigns (9.99%) — budget is the binding constraint
- PMax spending 90% on mobile (£604/£671 total PMax spend) — known limitation, no device control
- Emergency service terms triggering in PMax: "surrey fire and rescue" (£24, 1 conv), "fire brigade", "london fire brigade", "fire station near me" — add as PMax negatives (quick win)
- Brand queries (~£130-150/mo) spread across PMax + Search with no brand campaign to control
- RSA copy fixes outstanding: "20 years" → "25+" across all campaigns; fire alarm RSAs contain extinguisher guarantee copy
- Next: add PMax negatives for emergency service terms

# 2026-04-23

- Configured Claude Code statusLine: shows token usage + context window usage in green, refreshes every 10s
- Script lives at ~/.claude/hooks/status-line.sh — model name removed by choice, just numbers shown
- statusLine JSON fields available: tokens_used, context_tokens_used, context_tokens_total, model, session_id, cwd, transcript_path, permission_mode
- statusLine config options: command, refreshInterval (no other options documented)

# 2026-04-22

- Git configured globally (first-time setup): user.name = "Drew", user.email = drew.win.digital@gmail.com
- luna/.gitignore already correctly ignores all .env files recursively (patterns without slashes match any subdirectory) — no changes needed
- git init run in C:\Users\drew\luna — first commit of 1297 files in progress via Cursor (still running)
- No GitHub remote set up yet — next step is create private "luna" repo on GitHub, then run: git remote add origin https://github.com/USERNAME/luna.git && git branch -M main
- Google Ads API Basic developer token was denied — need to reapply via MCC 2284398748 using drew.win.digital@gmail.com (Tools > Setup > API Center)
- Skip Explorer access — go straight for Basic (Explorer is test accounts only, useless for real client data)
- Denial likely due to vague application — reapply with agency/multi-client framing and mention mutations (bids, campaign status, keywords)
- Google Ads Basic developer token reapplied 2026-04-22 — 3rd attempt (4 total allowed, 2 prior denials)
- Application answers: internal users only, built in-house (Q9 No), no app conversion tracking, campaign types: Search/Display/PMax, capabilities: Account Management/Campaign Management/Reporting
- Design doc created at C:\Users\drew\luna\ometry-api-tool-design.rtf and attached to application
- Next step: await Google review (typically a few days)
- Completed onboarding of 3 new clients: allure, misona, surrey-fire
- All fully configured — .env, settings.local.json, ads-context.config.json
- Surrey Fire: lead gen, CPA bidding, conversions = calls + Contact Form Submit
- Allure + Misona: ecom, ROAS bidding
- All use MCC 2284398748, credentials copied from contrelle
- Next steps for each: /ads-context-gatherer, /business-context, /gads-context

# 2026-04-21

- Added 3 new clients to hub (C:\Users\drew\luna): allure, misona, surrey-fire
- All use MCC 2284398748 (same as contrelle)
- All .env credentials copied from contrelle (same refresh token)
- All settings.local.json built from contrelle template with full permissions + hooks

## Allure
- Folder: clients/allure
- Customer ID: 3585452819
- Website: https://allurebathfashions.co.uk/
- Conversion: Purchase (1)
- Type: ecom — biddingStrategy set to roas
- Location: UK (2826)

## Misona
- Folder: clients/misona
- Customer ID: 7048948399
- Website: https://misona.co.uk/
- Conversion: Purchase
- Type: ecom — biddingStrategy set to roas
- Location: UK (2826)

## Surrey Fire
- Folder: clients/surrey-fire
- Customer ID: 7742356302
- Website: TBD — needs adding to main-config.json and ads-context.config.json
- Conversion: TBD — placeholder "purchase, lead" still in ads-context.config.json
- Type: lead gen — biddingStrategy stays cpa
- Location: UK (2826)
