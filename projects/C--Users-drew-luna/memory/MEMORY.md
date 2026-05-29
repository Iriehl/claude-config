# Memory Index

## Feedback
- [Contrelle GTM — read context/gtm.md first](feedback_contrelle_gtm_read_first.md) - HARD RULE: read context/gtm.md before ANY Contrelle GTM/tracking work. Full setup summary inside — consent mode state, purchase tag architecture, enhanced conversions, shared container rules.

## Project
- [Contrelle Account State](project_contrelle_account_state.md) - All 4 campaigns ENABLED 2026-05-21; Sizing Kit only primary conversion; PMax Sizing Kit listing group only; new_customer:true on Sizing Kit GTM tag
- [Contrelle Outstanding Actions](project_contrelle_actions.md) - Full prioritised action list: campaign re-enable (awaiting dev), Shopping negatives, QS fixes, GTM remarketing tag audit, GA4 tasks
- [Contrelle Conversion Value Fix](project_contrelle_conversion_fix.md) - COMPLETE 2026-05-14. 3 per-SKU variables live in GTM Version 23, verified on staging. GTM container diagnostics: 2 urgent flags = old Magento site URLs, not actionable.
- [Contrelle Tracking Audit WIP](project_contrelle_tracking_audit.md) - Audit started 2026-04-30, Phase 1 done (65%), 6 questions pending — read context/analysis/tracking-audit-wip.md to resume
- [Google Ads Refresh Token](project_google_ads_refresh_token.md) - Token last regenerated 2026-05-13; how to regenerate and where to update it
- [Hub Client Roster](project_hub_clients.md) - All clients in luna hub: contrelle, allure, misona, surrey-fire — IDs, type, status
- [Misona Account State](project_misona_account.md) - ecom UK client; £1,350/mo; Brand + Beach Towels Search campaigns LIVE 2026-05-28; full asset refresh complete; June 1 PMax checkpoint pending
- [Monthly Reports System](project_monthly_reports.md) - HTML reports replacing Data Studio; Allure sample done; Misona next; 2nd Monday cadence; full spec at C:\Users\drew\luna\.claude\rules\monthly-report-guide.md
- [Allure Account State](project_allure_account.md) - Phase 1 executed 2026-05-22; NCA 80/20 paper trail email v8 ready to send; value premium + new customer definition PENDING client response; Customer Match upload overdue; reporting moving to monthly
- [Allure Outstanding Actions](project_allure_actions.md) - Financial validation email v8 ready to send (created/emails/2026-05-26-financial-validation-questions-v8.txt); Customer Match upload overdue; NCA on PMax AFTER Customer Match + client confirmation; D28 CMP fix pending client
- [Microsoft Ads API Setup](project_microsoft_ads_setup.md) - COMPLETE 2026-04-24; Azure app, OAuth, credentials in config/.env; refresh token re-auth steps included
- [Surrey Fire Account State](project_surrey_fire_account.md) - Ad copy rebuild plan COMPLETE 2026-05-21 (Phases 0-9): 11 RSAs live, PMax refreshed + Listed Buildings AG, full asset refresh Google + Microsoft, RLSA 29 segments, outstanding: call tracking recheck 2026-05-28, Microsoft RSA import, Target CPA mid-June
- [Surrey Fire Conversion Context](project_surrey_fire_conversion_context.md) - STANDING RULE: ~90 contacts/mo, micro conversions active, thin per-campaign budgets (Buy £235, Fire Alarms £300/5 groups), dilution risk from enabling paused ad groups — applies to ALL decisions every session
- [Surrey Fire Campaign Scope](project_surrey_fire_campaign_scope.md) - 5 confirmed in-scope campaigns, LP routing per campaign, Fire Alarms sub-LPs, micro conversion rationale, PMax expansion plan
- [Surrey Fire Negative Structure](project_surrey_fire_negatives.md) - All 6 shared lists live (incl. 5 out-of-scope service lists), cross-campaign routing gaps outstanding, SKAG context, 1.5M keyword account
- [Surrey Fire PFP Proposal](project_surrey_fire_pfp_proposal.md) - PFP expansion proposal May 2026: £900/mo test budget, actual CPC benchmarks, outstanding client asks (contract value, ops capacity)
- [Surrey Fire Competitor Intelligence](project_surrey_fire_competitors.md) - 7 competitors, Securico direct threat; ~£203 brand pollution in search terms; competitor brand negative list outstanding
- [Surrey Fire Microsoft Ads Account](project_surrey_fire_mads_account.md) - Microsoft Ads structure, 30-day performance baseline, IS data, campaign changes 2026-04-24
- [mads-context Skill](project_mads_context_skill.md) - SOAP API quirks, invalid column names, device report workaround, IS columns now live in campaigns.csv, multi-client setup

## Reference
- [Chrome Debug Setup](reference_chrome_debug.md) - Run launch-chrome-debug.bat to enable browser control via Chrome DevTools MCP (port 9222); confirmed working 2026-05-17

- [Misona No Guarantee Rule](feedback_misona_no_guarantee.md) - NEVER use "12-month guarantee" in any Misona ad copy or assets — client confirmed not approved
- [Report versioning](feedback_report_versioning.md) - Never overwrite report HTML files; version as -DRAFT, -v2, -v3 same as emails; sample files are design templates only, commit to git when changed

## Feedback
- [Contrelle encoding cleanup](feedback_contrelle_encoding_cleanup.md) - Existing ad copy has Â artifacts; fix proactively when touching any Contrelle RSAs or ad copy
- [GTM shared container — scope to GADS + GA4 only](feedback_gtm_shared_container.md) - Contrelle GTM is shared; never delete (only pause); only touch Google Ads and GA4 tags
- [GTM — don't delete tags](feedback_gtm_dont_delete_tags.md) - Never delete tags just because they look dead. Leave backups in place. We don't work in isolation.
- [Email formatting for Outlook](feedback_email_formatting.md) - Use plain text only for emails, no markdown, no em dashes - user copies directly into Outlook
- [Email save location](feedback_email_save_location.md) - Always save emails to created/emails/ in the client project directory
- [Email creation process](feedback_email_creation_process.md) - Discuss and collaborate first, only write the file when user says go; always version (v2, v3) never overwrite
- [New client setup process](feedback_new_client_setup.md) - Full checklist for onboarding clients: ppcos init, .env copy, config updates, settings.local.json, bidding strategy by type
- [Google Ads API - MCP preferred](feedback_use_mcp_not_nodejs_scripts.md) - Prefer MCP for efficiency; Node.js scripts work (Basic token) but only use when MCP can't handle the query
- [No end-of-turn recaps](feedback_no_recaps.md) - Skip trailing summary paragraphs; user can read the diff
- [Competitor scraper fallback](feedback_competitor_scraper_approach.md) - No DataForSEO credentials; use Chrome DevTools + Transparency Centre manually; MCP can't pull auction insights (permission denied)
- [Budget source of truth](feedback_budget_source_of_truth.md) - Never infer monthly budgets from API daily cap data; only user-stated figures update business.md budget tables
- [No em dashes](feedback_no_em_dash.md) - Never use em dashes in any output; user copies text directly into client-facing docs
- [No WordPress changes without confirmation](feedback_no_wordpress_changes.md) - Read/investigate WP admin freely but never click Save/Activate/Deactivate/Update without explicit user sign-off
- [RSA headline copy rules](feedback_rsa_headline_copy.md) - Max 15H/4D for approval rounds; no filler trailing words ("too"/"also" in isolation); flag HIGH/MED/LOW approval risk per asset for healthcare accounts
- [Minimize proceed requests](feedback_minimize_proceed_requests.md) - Once a plan is approved, work through phases autonomously — no check-in prompts between steps
- [Budget change frequency](feedback_budget_change_frequency.md) - Max one budget change per campaign per week; frequent changes hurt performance regardless of campaign type or learning period status
- [Conversion value currency](feedback_conversion_value_currency.md) - UK accounts use GBP; always confirm account currency before setting conversion values, state as £X not just a number
- [Pre-granted permissions on approved plans](feedback_pre_granted_permissions.md) - Once a plan is approved, all tool use is pre-authorised — no permission prompts or yes/no checks before Bash, Python, MCP, or browser actions
- [Google Ads Editor vs API — Surrey Fire](feedback_gads_editor_vs_api.md) - Editor too slow (1.5M keyword account); default to API scripts for all bulk operations; write a script rather than suggesting Editor
- [Negative list per out-of-scope service](feedback_negative_list_per_service.md) - One shared list per service (not one big list) so a list can be unlinked cleanly when a service gets budget
- [AskUserQuestion skip in autonomous mode](feedback_askuserquestion_skip.md) - If same question gets no response twice in a session, skip it, use safest default, log "Re-ask pending" to memory — don't block autonomous phases
- [Check pacing before budget change](feedback_check_pacing_before_budget_change.md) - Always verify MTD pacing before changing any daily cap; elevated budgets may be intentional underspend recovery
- [Ignore old legacy campaigns](feedback_ignore_old_campaigns.md) - Never audit or recommend changes for old [Search]/[AG]/[YouTube] legacy campaigns; LP + conversion fixes happen at bring-online time only
- [RSA email format](feedback_rsa_email_format.md) - Ad blocks use "Campaign - Ad Group - Ad Name" header, then 15 headlines + 4 descriptions + URL in one unlabelled block, no blank lines within the block
- [RSA Excel approval](feedback_rsa_excel_approval.md) - Every RSA run must also produce a client approval Excel via generate-excel.py (Step 7.2.1 in all SKILL.md files); logo from context/brand-assets/logo.[jpg/png]; fixed green template, never brand colours
