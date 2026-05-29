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

### Consent Mode

- Stopgap consent tags live in GTM (Version 62) — passes end-to-end test
- Pre-consent cookie issue outstanding: CallRail, Google Click Linker, Hotjar fire before consent interaction
- Email sent to Aidan (ometry.studio) 2026-05-20 re: Cookie Compliance plan likely lapsed
- Once Aidan confirms: remove 3 GTM stopgap tags (do NOT remove before confirmation)

## PMax Video Strategy (agreed 2026-05-27)

Staged ask — not 75 at once. Priority order: square (1:1) first (most placements), vertical (9:16) second (Shorts), horizontal (16:9) last.
- Stage 1 (5 total): 1 square per campaign — activates video delivery on Display/Discover
- Stage 2 (15 total): + 1 vertical + 1 horizontal per campaign — all placements live
- Stage 3 / Excellent (25 total): + 2 more per campaign (square first, then vertical) = 5 per campaign hits Excellent threshold
- Beyond Stage 3: additional videos to build toward 75 long-term, no deadline
- Wireless Fire Alarms PMax: 4 basic videos need replacing; 1 YouTube channel video can stay pending Tracy sign-off

## Outstanding Actions (updated 2026-05-27)

- [ ] Call tracking recheck: "Calls from ads (Extension)" — recheck 2026-05-28 (fix applied 2026-05-19, not yet visible)
- [ ] Second phone number 0800 197 6544: likely CallRail — verify with client which campaigns use which number
- [ ] Microsoft Fire Alarms: cleanup 30+ SKAG groups (zero spend on all but Fire Alarm Servicing)
- [ ] Microsoft RSA import: 4 CSV files in created/rsas/microsoft/ — import via Editor
- [ ] Tracy email v7 READY TO SEND: created/emails/2026-05-27-new-contact-tracy-v7.txt — covers items 1-16 (financial info, campaign priority, reporting, PFP, PMax videos, outstanding items, cookie consent)
- [ ] Awaiting Tracy: financial figures (items 1-6), campaign priority order (7), PMax video creatives (10), brand campaign approval (13), budget growth approval (14), PMax expansion budget (15), cookie consent decision (16), Google Drive link (12)
- [ ] Aidan: waiting on Cookie Compliance plan status
- [ ] Next keyword batch: "fire extinguisher commissioning" (Installation), product-type terms (Buy Types group)
- [ ] RLSA review: ~2026-06-21. If All Converters on Servicing shows strong signal, apply +10-20% bid modifier
- [ ] Target CPA introduction: mid-June 2026 at earliest (60-90 day post-migration window from 2026-04-24)
- [ ] Structural cleanup (ETAs, zero-impression ad groups) — deferred
- [ ] Keyword + negative systematic review — deferred (do properly when time allows)
