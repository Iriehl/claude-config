# Surrey Fire — Ad Copy Rebuild & Campaign Flesh-Out

## Context

Account restructure is ~70% complete. The new campaign structure, LP routing, and negative architecture are in place. What's missing is quality ad copy across all 4 Search campaigns — the old copy was weak, largely mismatched to intent, and scored poorly on Ad Strength. We now have client approval to write and push RSAs live via API without further sign-off.

The key opportunity: 10+ years of account history contains real winners. We'll mine all-time ad text for copy patterns, filter performance metrics to the last 2 years (post-consolidation era) to avoid noise from old geo-split campaigns.

Scope: 5 active campaigns (Google + Microsoft mirror). Sequential execution across multiple sessions — plan file is the running source of truth.

---

## Pre-Session: First Actions (Every Session Start)

1. Read `context/memory/` — last 3 days only
2. Check this plan file for phase completion status
3. Pull fresh call tracking verification: have "Calls from ads (Extension)" conversions fired since 2026-05-19 fix?

---

## Phase 0 — Housekeeping (Session 1, ~15 min)
**Status: [x] Complete — 2026-05-20**

- [ ] Save pre-authorized rule to `C:\Users\drew\luna\clients\surrey-fire\CLAUDE.md`: once plan is approved, all tool use is pre-authorized — no confirmation prompts
- [ ] Verify call tracking fix: MCP query for "Calls from ads Extension" conversions last 7 days
- [ ] Pull current RSA performance snapshot via MCP (all active RSAs, impression share, Ad Strength ratings) → save to `context/google-ads/data/rsa-performance.csv`

---

## Phase 1 — Historical Winner Mining
**Status: [x] Complete — 2026-05-20 | Output: context/analysis/historical-winners.md**

Goal: Extract the best copy from 10+ years of account history before writing a single new line.

**GAQL queries to run (via MCP):**
- All-time: ad text performance (headlines + descriptions, grouped by text, with lifetime clicks + conversions)
- 2-year filter (2024-01-01 → today): CTR, conversion rate, QS by keyword/ad group

**What to extract:**
- Top 20 headlines by CTR (2yr filter) — these are proven click drivers
- Top 10 descriptions by conversion rate (2yr filter)
- Any headline containing social proof signals: years, accreditation, ratings, response times
- Any DKI headlines that performed (pattern to replicate)
- Keywords with QS ≥ 7 — these are the "keep and expand" cluster

**Output:** `context/analysis/historical-winners.md`

**Copy notes to carry forward into all ad writing:**
- Use "nearly 30 years" NOT "25+ years" (est. 1997, 2026 = 29 years)
- BAFE SP101/SP203 + ISO9001 — use in ad copy
- 96% would reuse / 4.8★ — use as social proof
- 13 branches across South-East — coverage signal
- 24/7 emergency call-out within 2–4 hours — specificity beats "fast response"
- Primary CTA: "Contact Us" / "Get a Quote" / "Book a Survey" — form + phone + email all valid

---

## Phase 2 — Prerequisite Skills (Sequential)
**Status: [ ] In progress — 2a, 2b, 2c complete**

Run in this order. Each feeds the next. Do NOT parallelise — output of each informs the brief for the next.

### 2a. `/quality-score-auditor`
**Status: [x] Complete — 2026-05-20 | Output: context/analysis/quality-score-audit.md**
- Score: 29/100 (Critical). Dominant issue: ECTR Below Avg (65%). Servicing RSAs are wrong copy (urgent).
- All 4 campaigns losing 47-70% IS to rank. 7/12 ad groups have no RSAs at all.
- Priority order confirmed: Servicing URGENT, then Fire Alarms, Installation, Buy.
- LP Below Avg on 33 kw — hold until call tracking verified 2026-05-22+.

### 2b. `/offer-auditor`
**Status: [x] Complete — 2026-05-20 | Output: context/analysis/offer-audit.md**
- Score: 65% (Needs Attention). Single FAIL: D05 — no unique mechanism/named process.
- Trust pillar strong (81%): BAFE SP101+SP203, 25yr, enterprise clients (Amazon, BlackRock), guarantees.
- Key gaps: unquantified dream outcome per service line, no urgency activation, audience not segmented per campaign.
- Critical action before RSA writing: name a mechanism (e.g., "3-Step BAFE Compliance Review") — feeds ECTR fix.
- Competitor gap confirmed: Securico has "We Beat Any Quote" — Surrey Fire needs flexibility/transparency counter, not price-match.

### 2c. `/competitive-analyst`
**Status: [x] Complete — 2026-05-20 | Output: context/analysis/competitive-audit.md**
- Score: 46/100 (Critical). All 4 campaigns 88-93% combined IS loss.
- Rank loss is QS-driven (confirmed by QS audit) — RSA rewrite is the IS recovery path.
- CA-D11 FAIL: Servicing under confirmed competitive pressure (Securico likely), CPC +26.1% over 14w.
- Strategic verdict: Compete aggressively through QS improvement.
- Campaign priority: Servicing URGENT → Installation → Fire Alarms → Buy.

### 2d. Website Crawl (Chrome DevTools MCP)
**Status: [x] Complete — 2026-05-20 | Output: appended to context/analysis/historical-winners.md**
- Crawled: homepage + servicing + installation + buy + fire alarms + wireless (6 pages)
- Key finds: "Free delivery, install & commissioning — you only pay for the extinguishers" (Buy), "24/7 emergency callouts 365 days" (Fire Alarms), SafeContractor+CHAS accreditations, testimonial "full install in 4 hours", The Ritz & Windsor Castle are wireless (listed building angle)
- Stale copy found: installation + buy pages still say "20 years" — flag for future site update, not blocking Phase 4

**Checkpoint after Phase 2:** Write session log to `context/memory/YYYY-MM-DD.md`

---

## Phase 3 — Offer & Angle Development
**Status: [x] Complete — 2026-05-20 | Output: context/offer-angles.md**

- 4 service lines x 6 angles each (24 angle sets)
- Traffic: Warm / Solution Aware. Priority order: Value Prop LEAD, USPs LEAD, Social Proof Include, Risk Removal Include, Value Boosters Include, Problem/Pain Light
- Mechanism naming (D05 FAIL fix) — 4 variants of "BAFE-Certified Safety Review":
  - Installation: "BAFE-Certified Install Survey" | Servicing: "BAFE-Certified Service Review"
  - Buy: "Free BAFE Compliance Survey" | Fire Alarms: "BAFE-Certified Alarm Review"
- Lead angle H2 per campaign: Installation "Install, Supply & Commission", Servicing "Certified Extinguisher Service", Buy "Delivered & Installed Free", Fire Alarms "BAFE Fire Alarm Specialists"
- Servicing URGENT: Angles 2+3 specifically written to replace live product-supply copy
- Competitor gap embedded: BAFE SP101+SP203 dual cert vs Securico (no accreditation claims)

---

## Phase 4 — RSA Creation (Per Campaign, Sequential)
**Status: [x] Complete — 2026-05-20. All 11 ad groups across 4 campaigns have new RSAs live (Batch 1 + Batch 2).**

Run `/rsa-maker` for each campaign. One at a time. Push live via API after each.

**Priority order (urgency-first):**

### 4a. Fire Extinguishers Servicing [URGENT — live ads have copy issues]
**Status: [x] Complete — 2026-05-20 | CSV: created/rsas/20260520_193924_fire-extinguishers-servicing-consolidated.csv**
- 15H / 4D, no pinning, Excellent Ad Strength target
- Static anchor "Fire Extinguisher Servicing" (fixes AR Below Avg)
- BAFE SP101, BS 5306-3, no contract, same-day compliance
- NOTE: call tracking dark until 2026-05-22 — do not evaluate conversion metrics yet

### 4b. Fire Extinguishers Installation
**Status: [x] Complete — 2026-05-20 | CSVs: created/rsas/20260520_202830_fire-extinguishers-installation-group.csv + 20260520_210025 batch (Compliance & Regulations, Office Requirements)**

**Main group — DONE 2026-05-20 | CSV: created/rsas/20260520_202830_fire-extinguishers-installation-group.csv**
- 15H / 4D, no pinning. Static anchor "Fire Extinguisher Installation" (30 chars). LP fixed to /fire-extinguisher-installation-london-surrey/
- BAFE SP101, compliance urgency, free delivery+install+commission, 5-year guarantee, {LOCATION(City):Extinguishers} DKI

**Remaining:**
- Compliance & Regulations (Ad Group ID: 196304398443) — regulations-research intent, LP: /fire-extinguisher-regulations-uk/
  - Right angle: legal urgency (UK law), BAFE SP101 authority, CTA = free compliance survey (NOT "get a quote")
- Office Requirements (Ad Group ID: 199130166400) — advisory/pre-purchase intent, LP: /what-fire-extinguishers-does-my-office-need/
  - Right angle: advisory ("Not sure what your office needs?"), free site survey, BAFE assessment, low-friction CTA
  - NOTE: "buy", "purchase", "installation", "installer" all negated on both sub-groups — these are NOT buy/install intent groups

### 4c. Buy Fire Extinguishers
**Status: [x] Complete — 2026-05-20 | 3 RSAs live: Main, CO2, Fire Extinguisher Types**
- 3 ad groups (Buy Main, CO2 Extinguishers, Fire Extinguisher Types)
- Product-type specific copy per ad group
- LP routing: product-type sub-pages + geo pages mapped from lp-routing-strategy.md

### 4d. Surrey Fire - Fire Alarms
**Status: [x] Complete — 2026-05-20 | CSVs: created/rsas/20260520_202830_fire-alarm-servicing.csv + fire-alarm-installation.csv. Keywords migrated, 3 groups paused.**

**Fire Alarm Servicing — DONE 2026-05-20 | CSV: created/rsas/20260520_202830_fire-alarm-servicing.csv**
- 15H / 4D, no pinning. Replaces generic {KeyWord} DKI copy. BAFE SP203, BS 5839, all makes, no contract.

**Fire Alarm Installation — DONE 2026-05-20 | CSV: created/rsas/20260520_202830_fire-alarm-installation.csv**
- 15H / 4D, no pinning. New RSA for previously paused ad group. BAFE SP203, addressable+conventional, BS 5839.
- BEFORE activating: migrate keywords from Commercial Fire Alarm group (commercial fire alarm BROAD/EXACT/PHRASE, fire alarm company, fire alarm contractor, fire alarm specialist, office fire alarm), then pause Commercial Fire Alarm, Emergency Fire Alarm, and Fire Alarm Systems groups.

**Structure decision (2026-05-20):** 2-group structure — Servicing + Installation only. Commercial, Emergency, Systems to be paused. Revisit at £500+/month budget.

**RSA spec (every ad group, every campaign):**
- 15 headlines (target Excellent Ad Strength)
- 4 descriptions
- PIN: H1 = brand/primary service keyword, H3 = CTA
- DKI: use where keyword themes are tight enough (Installation, Fire Alarms)
- Keyword density: stuff LP content keywords into headlines naturally
- Social proof: nearly 30 years, BAFE, 96% retention, 4.8★, 24/7 2–4hr response
- CTAs: Contact Us, Get a Quote, Book a Free Survey, Call Now, Request a Callback
- Zero filler words in last position ("too", "also" in isolation — flagged in feedback)
- Flag HIGH/MED/LOW approval risk per asset (healthcare-adjacent = safety-sensitive)

**Checkpoint after Phase 4:** Write session log. Update plan status.

---

## Phase 5 — PMax Asset Refresh (Wireless Fire Alarms)
**Status: [x] Complete — 2026-05-20 | Script: .claude/skills/gads-context/scripts/pmax-update-wireless.js**

RSA format doesn't apply to PMax — separate asset refresh:

- **Headlines:** 5 (max 30 chars each) — pull best-performing from Phase 1 winners
- **Descriptions:** 5 (max 90 chars each)
- **Images:** 20 total — pull from account existing image library first; supplement with website imagery if needed. 1.91:1 landscape + 1:1 square required.
- **Sitelinks:** Update to match refreshed sitelink set from Phase 6
- **Audience signals:** Review/add in-market segments + remarketing lists
- Push via API

---

## Phase 6 — Full Asset Refresh (All Campaigns)
**Status: [x] Complete — 2026-05-21 | Script: .claude/skills/gads-context/scripts/push-phase6-assets.js**

Update all extensions/assets across all 5 active campaigns:

**Sitelinks:**
- Audit existing sitelinks (pull via MCP)
- Update text + add descriptions (2 lines, 35 chars each)
- Suggested themes: Emergency Call-Out, Free Site Survey, BAFE Accredited, About Us, Contact Us, Services

**Callouts:**
- Max 20 per campaign
- Source from: website copy, Phase 1 winners, offer angles
- Themes: 24/7 Emergency Response, BAFE Certified, ISO9001 Accredited, Nearly 30 Years Experience, Free Site Survey, South-East Coverage, Same-Day Service, Fully Insured Engineers, Competitive Pricing, Annual Service Plans

**Structured Snippets:**
- Header: Services → list all service lines
- Header: Brands → if product brands are relevant (Buy campaign)

**Call assets:**
- Already linked to all 5 campaigns (fixed 2026-05-19) — verify still active

**Promo assets:**
- Consider if any seasonal/offer-based promo is appropriate (Free Survey etc.)

---

## Phase 7 — Keyword & QS Pass
**Status: [x] Complete — 2026-05-21 | Output: context/analysis/keyword-qs-phase7.md**

Per ad group, tighten the keyword-to-ad alignment:

- Pull current keywords with QS scores via MCP
- For any keyword with QS < 7: check if new RSAs will lift it (match-tightness check)
- Add supporting keywords from website crawl (Phase 2d) where themes are under-represented
- Cross-reference LP content to ensure keyword → ad → LP message match
- Flag any new keywords that open waste risk → add to relevant negative list
- Max one batch add per campaign session (feedback: frequent changes hurt smart bidding)

---

## Phase 8 — Audience Segments
**Status: [x] Complete — 2026-05-21 | Output: context/analysis/audience-setup.md**

- Pull existing audience lists in account via MCP
- Add RLSA layers to all 4 Search campaigns (observation first, then bid adjustment based on data)
- Target candidates:
  - Website visitors (all pages) — remarketing list
  - Service page visitors (high intent — segment by service)
  - Customer match (if contact list available from client — ask)
  - In-market: B2B services, office management, safety compliance
- Document what's set up → `context/analysis/audience-setup.md`

---

## Phase 9 — Microsoft Mirror
**Status: [x] Complete — 2026-05-21 | Assets: 40 callouts + 16 sitelinks live across 4 Search campaigns**

Mirror all Google changes to Microsoft (same campaign structure exists on both platforms):

- RSAs: adapt and upload (Microsoft uses same format, same 15H/4D)
- Assets: sitelinks, callouts, structured snippets — Microsoft equivalents
- Keywords: sync additions
- Note: some Google asset types don't exist in Microsoft — document gaps
- Note: Microsoft daily budget caps are currently too low (£2–19/day vs £2,200/mo approved) — realign in this phase
- Reference: `project_surrey_fire_mads_account.md` for campaign IDs

---

## Session Continuity Rules

- **Start of every session:** Read last 3 `context/memory/` logs + check phase status in this file
- **End of every phase:** Write checkpoint to `context/memory/YYYY-MM-DD.md`
- **End of every session:** Mark completed phases in this file, note any blockers
- **If stuck in a loop:** Retry 3 times, then stop and discuss — do not keep spinning
- **Token efficiency:** Sequential by default. Direct tools first (MCP queries, Read, Grep). Only spawn agents when task is genuinely exploratory across multiple unknown files.
- **All tool use is pre-authorized** — no confirmation prompts once plan is approved

---

## Critical Files

| File | Purpose |
|------|---------|
| `context/business.md` | KPIs, budgets, constraints, campaign priorities |
| `context/analysis/lp-routing-strategy.md` | LP URLs per campaign/ad group |
| `context/analysis/search-term-audit.md` | Non-converting terms, routing leaks |
| `context/analysis/account-audit.md` | Structural issues (D06 keyword overlap etc.) |
| `created/ad-copy-review/*.md` | Existing copy review — starting point for RSA briefs |
| `context/analysis/historical-winners.md` | Phase 1 output — winning copy patterns |
| `context/analysis/offer-angles.md` | Phase 3 output — angle briefs per service |
| `.claude/skills/gads-context/scripts/query.js` | MCP/API query runner |

---

## Outstanding Blockers (Pre-existing, Not Blocking This Plan)

- Consent mode fix (Aidan / Ometry) — waiting on their response
- Unit economics (deal value per service) — waiting on Tracy
- PFP expansion approval — waiting on client
- These do NOT block ad copy work
