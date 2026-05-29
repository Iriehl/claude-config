# Memory Index

## Project
- [Bing PMax campaign fix — Microsoft Advertising API](project_bing_pmax_fix.md) — Option B agreed: Google Apps Script + Microsoft Ads API OAuth; setup ~1hr; current workaround is manual entry for Surrey Fire PMax £650/mo
- [Google Ads API developer token — test-level only](project_developer_token.md) — Basic access rejected April 2026; all mutation scripts blocked; use UI/Editor until resolved
- [Contrelle relaunch bid strategy and conversion goal decisions](project_relaunch_strategy.md) — Manual CPC at launch; selective optimisation Demand Gen + PMax only; DG language/location = ad group level
- [Contrelle pre-launch outstanding items — as of 2026-04-11](project_launch_outstanding.md) — Blockers: DG assets pending, Shopping policy warning, old experiment campaign; settings + compliance items outstanding
- [Competitor ad intelligence — Jude & uresta (scraped 2026-04-21)](project_competitor_intelligence.md) — uresta: zero ads; Jude: Dragons' Den + absorbent underwear; Contrelle gaps: prevents vs absorbs, clinical numbers, immediate effect, active women

## Project
- [Contrelle website technical details](project_site_technical.md) — New site = WooCommerce, confirmation URL: /checkout/order-received/{id}/?key=wc_order_{key}; Old site = Magento with Magento_GoogleAnalytics module

## Reference
- [Running Brief — global cross-client living document](reference_running_brief.md) — Master brief for all clients at `C:\Users\drew\luna\running-brief.md`; updated end of every session
- [TrueClicks / gaql.app Google Ads MCP — location and config](reference_trueclicks_mcp.md) — User-scoped (not project); NOT in .mcp.json or settings files; verify with `claude mcp list`

## Feedback
- [Chrome DevTools — use temp profile via launch-chrome-debug.bat](feedback_chrome_devtools_connection.md) — Chrome 147 blocks debug port on signed-in profiles; run launch-chrome-debug.bat, auth in temp window, then connect
- [Known Claude errors and uncertainties — 2026-04-12 pre-launch](feedback_session_uncertainties.md) — 3 items to verify: GP ref location in Brand ad, DG Targeting/Observation controls, GMC re-link suggestion was premature
- [GMC feed — do not mention NHS prescription](feedback_gmc_nhs_prescription.md) — Causes GMC product approval issues; strip from all feed titles and descriptions
- [No remarketing/behavioural audiences for YouTube/Demand Gen](feedback_policy_remarketing.md) — Previous Claude session wrongly recommended this; GMC policy restriction requires contextual targeting only
- [Email formatting for Outlook](feedback_email_formatting.md) — Use plain text only for emails, no markdown — user copies directly into Outlook
- [Email files — always create new, never edit existing](feedback_email_files.md) — Never modify existing email files; always write new emails as new dated .txt files
- [RSA policy — UK healthcare/prescription language rules](feedback_rsa_policy_uk.md) — Confirmed safe/unsafe copy for Contrelle RSAs; PRESCRIPTION_DRUG_SALE disapprovals from GP/prescription/SUI language
- [DataForSEO — no access, free tools only](feedback_dataforseo_no_access.md) — No DataForSEO credentials; use Google Ads Transparency Center via Chrome DevTools MCP or manual scrape instead
