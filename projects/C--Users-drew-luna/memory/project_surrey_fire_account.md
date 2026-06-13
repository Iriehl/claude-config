---
name: surrey-fire-account-state
description: "Surrey Fire overall PPC account state across Google Ads and Microsoft Ads — current setup, decisions made, and what to watch"
metadata: 
  node_type: memory
  type: project
  originSessionId: 7a20a970-db47-43fb-bd04-1f54f0cd9671
---

## Account Overview

- Client: Surrey Fire & Safety Ltd
- Platforms: Google Ads + Microsoft Ads (Bing)
- Google Ads customer ID: 7742356302 | Login customer ID: 2284398748
- Total monthly budget: £4,500 (Google £2,300 + Microsoft £2,200)
- Currency: GBP
- Primary KPI: Contact conversions (form + phone)
- Mode: Growth
- SMART target: 120 contacts/month by 30 Sep 2026 (baseline: 90-100/month, £55-65 blended CPA)
- CPA guardrail: £80 max blended

## Current Account State (as of 2026-05-21)

### Ad Copy Rebuild Plan — COMPLETE (Phases 0-9)

Full plan file: `C:\Users\drew\.claude\plans\we-mhave-some-snuggly-platypus.md`

All phases complete as of 2026-05-21:

**Google Ads — RSAs live (11 ad groups, 4 campaigns):**
- Fire Extinguishers Servicing: 1 new RSA (replaces wrong product-supply copy)
- Fire Extinguishers Installation: 3 new RSAs (Main, Compliance & Regulations, Office Requirements)
- Buy Fire Extinguishers: 3 new RSAs (Main, CO2, Fire Extinguisher Types)
- Surrey Fire - Fire Alarms: 2 new RSAs (Servicing, Installation) — 3 SKAG groups paused; keywords migrated from Commercial Fire Alarm to Installation group

**Google Ads — PMax (Wireless Fire Alarms):**
- Default asset group refreshed: stale/generic assets removed, BAFE + listed buildings copy added, 5 new search themes
- New asset group created: Listed Buildings - Wireless Fire Alarms (ID: 6714911050), ENABLED
- 8 campaign-level residential-intent negatives added

**Google Ads — Assets (all 5 campaigns):**
- 4 sitelinks per campaign (campaign-specific, with descriptions)
- 10 callouts per campaign (BAFE credentials, guarantees, response times)
- 1 structured snippet per campaign (Services or Types header)
- Fire Alarms: 7 stale sitelinks removed before new ones added

**Google Ads — Keywords:**
- Added to Servicing: "fire extinguisher refill" + "fire extinguisher recharge" (phrase + exact)
- Paused in Installation Main: "fire extinguisher technician" (worker intent), "fire extinguisher types" broad+phrase (overlap with Buy)
- Next batch deferred: "fire extinguisher commissioning" to Installation, product-type terms to Buy Types group

**Google Ads — Audiences:**
- 29 RLSA segments added across 9 ad groups — all observation mode (bid_modifier 1.0)
- Servicing: FE Pages Visitors GA4, All Converters, All Visitors 180d
- Installation (all 3 groups): same 3 lists
- Buy (all 3 groups): FE Pages Visitors GA4, FE Visitors, All Visitors 90d
- Fire Alarms (both groups): FA Pages GA4, FA Tag Visitors, All Converters, All Visitors 180d
- Customer Match list is empty — ask Tracy for contact list
- RLSA review date: ~2026-06-21

**Microsoft Ads — Mirror complete:**
- RSAs: 4 CSV files created for Editor import (DKI replaced with static fallbacks)
- Budgets realigned: Fire Alarms £6.50->£7/day; PMax deliberately left at £30/day (14% underspend recovery — do not change without checking MTD pacing)
- Keywords synced: fire extinguisher refill + recharge added to Servicing (phrase + exact)
- Assets: 40 callouts + 16 sitelinks live across all 4 Search campaigns
- Fire Alarms Microsoft: still 30+ SKAG groups — cleanup deferred to future session

### Structural Cleanup — Deferred

- 6,122 ETAs (zero data since 2022 deprecation, safe to remove — systematic review when time allows)
- 1,667 zero-impression ad groups in paused/out-of-scope campaigns — kept for potential future use
- ~1.5M entity count causing Editor lag — "skip removed items" setting may help without account changes

### Consent Mode - WORKING (GTM v63, 2026-06-03)

- Consent Mode v2 end-to-end verified: default deny + accept flow correct for Google Ads, GA4, Bing
- GA4 sessions dropped ~80% post 19 May - EXPECTED, consent mode working correctly
- Google Ads conversions protected by modeling
- Microsoft Ads will show ~20% of pre-consent numbers (no Bing modeling)
- Pre-consent cookie issue still outstanding (CallRail, Click Linker, Hotjar fire before consent)
- Aidan (ometry.studio) email sent 2026-05-20 re Cookie Compliance - still awaiting response

### Bing Tracking - FIXED (GTM v63, 2026-06-03)

- 3 broken Bing event tags replaced with native Microsoft UET tags (Custom conversion, GBP)
- Tags fixed: E-mail Click (el=email_click), Phone Number Click (el=phone_number_click), Contact Form Submit (el=contact_form_submit)
- New tag added: Bing Phone Call (el=phone_call) - awaiting CallRail integration to activate
- Verified: events fire to bat.bing.com/action/0 as img type (confirmed via performance.getEntriesByType)
- CallRail NOT connected to Microsoft Ads - needs CallRail dashboard access (ask Tracy or Aidan)
- Once CallRail connected: add Microsoft Ads integration using UET tag ID 5091979
- Phone number gap: 01276 740141 on /contact-us/ not tracked on either platform - flag to Tracy

## PMax Video Strategy (agreed 2026-05-27)

Staged ask — not 75 at once. Priority order: square (1:1) first (most placements), vertical (9:16) second (Shorts), horizontal (16:9) last.
- Stage 1 (5 total): 1 square per campaign — activates video delivery on Display/Discover
- Stage 2 (15 total): + 1 vertical + 1 horizontal per campaign — all placements live
- Stage 3 / Excellent (25 total): + 2 more per campaign (square first, then vertical) = 5 per campaign hits Excellent threshold
- Beyond Stage 3: additional videos to build toward 75 long-term, no deadline
- Wireless Fire Alarms PMax: 4 basic videos need replacing; 1 YouTube channel video can stay pending Tracy sign-off

## Client Sales Figures - FIRST EVER (2026-06-12)

Tracy provided rough sales figures after 4-5 years of asking. Full detail: clients/surrey-fire/context/business.md (Unit Economics > Client-Provided Sales Figures). Headlines:
- Wireless Fire Alarms: £5-10k typical job (Richard's estimate); list prices £1,500/£3,500/£9,500+
- Extinguisher Installation: £350-480 (3-5 units); Buy = same (install price = purchase + commission)
- Extinguisher Servicing: £112-138 new / £93-105 existing, recurring annually (+6%/yr, customers stay)
- Fire Alarm Servicing: £178-297 per service, twice/yr
- Margin ~30%. Lead-to-close rate still unknown - BUT client is implementing a CRM (2026-06-12, teething problems, name/timeline unknown). Ask Tracy: which CRM + lead source/outcome fields. CRM = future offline conversion imports; form service-selector dynamic values are the bridge.
- New contact form (Elementor, /contact-us/) has 11-option service checkbox group - capturable in GTM for dynamic conversion values. submit pushes form_submit_elementor event (no field values - DOM capture needed before Elementor reset). Build spec in 2026-06-12 memory log.
- Client priority signals: fire alarms (esp. wireless) over extinguishers; contact forms over phone calls (phone enquiries convert poorly)
- AWAITING TRACY: full priority order confirmation + relative contact values (form £1,000; phone/email £500 or £250) + CallRail-in-Microsoft confirmation
- Next: budget reallocation proposal weighted toward fire alarms once order confirmed; per-service-line conversion value differentiation

## Conversion Values & Bid Strategy (2026-06-12)

- Tracking issues resolved 2026-06-12 - clean data starts now; don't judge strategy performance on prior data
- Primary actions (form, email, phone call) at £1,000 flat (raised from £100/£50); true micros (dwell/interaction) at £0 intentionally
- Search campaigns moved to Max Conversion Value (no target) 2026-06-11; Brand + new PMax switch PARKED - likely leaving as-is pending priority/budget discussion
- Maximise Conversions tested ~May, reverted - value bidding kept for cross-campaign job-value spread

## Audit Status (updated 2026-05-30 session 2)

Full skill run completed across two sessions on 2026-05-30:

| Skill | Score | Status |
|-------|-------|--------|
| gads-context | — | Refreshed (was 33 days stale) |
| mads-context | — | Refreshed — 7 reports, 30 days |
| strategy-specialist | 65% | Done — unit economics hollow (deal value missing) |
| bidding-auditor | 88% | Done — tCPA ready, add data exclusion before mid-June |
| budget-auditor | 65% | Done — all 5 campaigns 33-51% IS lost to budget |
| geo-schedule-auditor | 73% | Done — Desktop +20% modifier ignored; PMax mobile |
| placement-auditor | 9% | Done + FIXED — 26 app category + 83 domain exclusions applied |
| lp-auditor | 61% | Done — www SSL fixed (9 ads), 9-field form, stale copy |
| account-auditor | 71% | Done — no brand campaign, Desktop +20% modifier, clean structure |
| keyword-auditor | 74% | Done — 0 keywords above £80 CPA; budget is the constraint |
| competitive-analyst | 63% | Done — budget ceiling steady state, not competitive attack; Servicing CPC pressure real (r=-0.869) |
| quality-score-auditor | 36% | Done (re-run) — AR improved (FAIL->WARN post RSA rebuild), ECTR 63% still failing, re-audit 2026-07-15 |
| account-changelog | — | Refreshed |

**Applied changes session 2 (2026-05-30):**
- Desktop +20% bid modifier removed from all 4 Search campaigns (1.2 -> 1.0)
- Fire Alarms Sunday schedule: Mon-Sat 24/7 + Sun 08:00-20:00 only (excludes overnight + late evening waste)
- "commercial fire extinguishers" [Phrase] negative added to Servicing campaign

## Outstanding Actions (updated 2026-05-30 session 3)

- [ ] **NEXT SESSION: Add keywords to 4 new Microsoft ad groups** — Compliance & Regulations (AG: 1147892019709706), Office Requirements (AG: 1141294949052116), CO2 Extinguishers (AG: 1148991530989803), Fire Extinguisher Types (AG: 1137996414288913). Mirror from matching Google ad groups.
- [ ] **NEXT SESSION: Confirm 12-month fire alarm servicing guarantee with Tracy** — headline live in both Google + Microsoft RSA but unconfirmed for servicing. If true, add to LP. If not, replace headline.
- [ ] **CHECK: RSA ad strength** — Servicing + Installation + Fire Alarm Servicing updated today. Should show EXCELLENT within 24h. Fire Alarm Servicing already EXCELLENT at end of session.
- [ ] **2026-06-01: Bid strategy review** — Maximize Conversions was set May 2026 during account rebuild. Review May performance. Move to tCPA if unit economics (deal value + lead-to-close rate) have come back from Tracy. Prerequisite checklist before switching: (1) Tracy unit economics confirmed, (2) call tracking fix verified, (3) data exclusion for call tracking outage added. tCPA target = £56 (70% of £80 guardrail). Bidding audit (2026-05-30, 88%) confirmed all 5 campaigns are ready structurally.
- [ ] Data exclusion for call tracking outage — Google Ads Tools > Data Exclusions (before tCPA mid-June)
- [ ] Fix MANY_PER_CLICK on Calls from ads + Phone Call conversion actions (per tracking audit)
- [ ] Call tracking recheck: "Calls from ads (Extension)" — still silent per 2026-05-18 tracking audit
- [ ] Second phone number 0800 197 6544: verify with client
- [ ] Microsoft Fire Alarms: cleanup 30+ SKAG groups
- [ ] Tracy email v7 READY TO SEND: created/emails/2026-05-27-new-contact-tracy-v7.txt
- [ ] Awaiting Tracy: deal value + lead-to-close rate (CRITICAL — needed for tCPA target), PMax video creatives, budget growth approval, cookie consent
- [ ] Aidan: waiting on Cookie Compliance plan status
- [ ] RLSA review: ~2026-06-21
- [ ] Target CPA introduction: mid-June 2026 — prerequisite: call tracking fix + data exclusion + unit economics validation
- [ ] Surrey Fire logo for monthly report: drop file at context/brand-assets/logo.[ext] before first report run
- [ ] QS re-audit: 2026-07-15 (45 days post RSA rebuild — ECTR recovery check)
- [ ] Competitive re-audit: 2026-07-21 (60 days post rebuild — rank loss should reflect QS recovery)
- [ ] Next keyword batch: "fire extinguisher commissioning" (Installation), product-type terms (Buy Types group)
- [ ] /offer-maker formal output — not yet run; not blocking Microsoft export
- [ ] Installation LP form: reduce from 9 to 5 fields — client/web team action (per LP audit)
- [ ] **Lead form asset delivery BLOCKED (2026-06-12)** — added lead form asset to Google Ads. Email notifications CANNOT be set: standard user permissions block adding any notification email (info@surreyfire.co.uk AND drew.win.digital@gmail.com both rejected; domain not on allowed list). Admin access already requested from client. WHEN ADMIN GRANTED: set notification emails (info@surreyfire.co.uk + drew.win.digital@gmail.com — note correct spelling), counting One, leave webhook blank. Conversion action "Lead form submission" auto-creates from first submission regardless — configure it Secondary/no value for 2-3 weeks to vet lead quality before letting it feed Max Conv Value bidding, then promote to Primary if quality holds.
- [ ] **2026-07-03: Manual lead pull** — until email delivery is unblocked, download collected leads from the ad extensions table (leads held 30 days only). Reminder set 21 days from 2026-06-12.

## Client Website & Copy Rules

- Client website: https://surreyfire.co.uk/ — use for any copy clarifications, service confirmations, and LP checks
- Time in industry: always "nearly 30 years" (est. 1997, 2026 = 29 years) — never "25+ years", "20 years", or any other figure
- Full autonomy granted: pre-approval given for all Google Ads and Microsoft Ads changes that benefit account performance — no per-change confirmation needed
- Device targeting: all devices enabled account-wide (desktop-only restriction permanently removed 2026-06-05) — do not add device bid adjustments to any new campaigns

## 12-Month Fire Alarm Servicing Guarantee — UNCONFIRMED

Current state: "12-Month Service Guarantee" headline is live in Fire Alarm Servicing RSA (H9).
- Installation RSA and Fire Alarm Installation RSA both carry "12-Month Install Guarantee" — confirmed language for installation work
- Fire Alarm SERVICING guarantee status: unclear. Site references BS 5839 compliance but no explicit 12-month service guarantee found
- Action needed: (1) Confirm with Tracy whether a 12-month guarantee applies to fire alarm servicing work; (2) if confirmed, add clearly to surreyfire.co.uk/fire-alarm-specialist-london-surrey/ page
- If NOT confirmed: replace headline with "BAFE SP203 Full Service Report" or similar
