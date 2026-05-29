---
name: Contrelle relaunch bid strategy and conversion goal decisions
description: Key strategic decisions made during 2026-04-11 pre-launch session for dormant account relaunch
type: project
originSessionId: 80dcd871-5432-4884-807a-398a264b5685
---
## Bid Strategy — Brand & Search: Keep Manual CPC

Both campaigns stay on Manual CPC at launch. Do NOT switch to Max Conversions on go-live.

**Why:** Account dormant 2 years — zero Smart Bidding signals. Max Conversions on a cold account = Google bids blind and burns budget during learning phase.

**How to apply:** Trigger to switch is 20 conversions in a 30-day window. Apply to Brand first, then Search once each hits the threshold independently.

---

## Conversion Goals — Confirmed Architecture (updated 2026-04-14)

**Account-level conversion actions — all 3 remain Primary (do not change):**
- Purchase - Sizing Kit → Primary
- Purchase - 5 Pack → Primary
- Purchase - 30 Pack → Primary

Account default stays wide (all 3 primary). This is correct for Shopping, Demand Gen, and PMax — they need conversion volume to build Smart Bidding signals on a cold account.

**Custom conversion goals (built, confirmed in account):**
- Purchase - Sizing Kit Only — 1 action (Sizing Kit only)
- Purchase - 5 Pack only — 1 action
- Purchase - 30 Pack only — 1 action

**Campaign goal assignments — LAUNCH STATE (2026-04-14):**
- **Brand** → Purchase - Sizing Kit Only (custom goal) — campaign-level override
- **Search** → Purchase - Sizing Kit Only (custom goal) — campaign-level override
- **Shopping** → Account default (all 3 primary) — wide for data collection
- **Demand Gen** → Account default (all 3 primary) — wide for data collection
- **PMax** → Account default (all 3 primary) + new customer acquisition goal enabled

**Why Brand/Search are narrow from day 1:** Keyword-controlled campaigns — intent is known before auction. Manual CPC means conversion goal doesn't affect bidding, but keeps reporting clean. Sizing Kit will naturally dominate these anyway.

**Why Shopping/DG/PMax are wide at launch:** Audience/signal-driven — need conversion volume to learn. Restricting to Sizing Kit only risks slow learning phase ramp on a cold account (zero Smart Bidding signals after 2-year dormancy). PMax needs 30-50 conversions to exit learning mode.

**Month 2 review trigger:** Once Shopping, DG, and PMax each hit 20-30 Sizing Kit conversions, switch those campaigns to Purchase - Sizing Kit Only custom goal.

**Effect of launch state:** Brand + Search Conversions column = Sizing Kit only. Shopping/DG/PMax Conversions column = all 3 purchases during data collection phase.

**Why:** Data collection first, narrow later. Restricting too early on audience-driven campaigns with a £9 product means slow signals and poor Smart Bidding ramp-up.

---

## Demand Gen — Bid Strategy: Max Conversions

Demand Gen stays on Max Conversions at launch (unlike Brand/Search which are Manual CPC).

**Why:** Demand Gen is impression-based prospecting, not keyword auctions — Manual CPC doesn't provide meaningful control. Budget is contained at £32.88/day so learning phase risk is acceptable.

---

## PMax — Status (as of 2026-04-14)

Campaign is BUILT and PAUSED. Start date: 1 May 2026. Budget: £50/day placeholder (update to ~£65/day at go-live).

Bid strategy: Max Conversions (no target CPA). Layer in tCPA after 20-30 conversions, starting 20-30% above actual CPA. New customer acquisition goal enabled — will inflate CPA initially, factor this in before reacting.

NCA goal: enabled in UI (cannot be set in Editor). Brand exclusions: Contrelle brand list applied.

---

## Demand Gen — Ad Format

No long headlines in current UI. Format is: short headlines (max 40 chars, up to 5) + descriptions (max 90 chars, up to 5) only. Long headline copy from brief is unused/shelved. Ad type: Image and products. Videos can be added to existing ad groups later without creating new ad type.

---

## Final URLs — New Site Launch Breakage Expected

All campaign final URLs (ads, sitelinks, assets) will likely break when the new website goes live. This is accepted and unavoidable given the site migration timing.

**Why:** Old site URL structure won't map 1:1 to new site. Campaigns are launching on old URLs for now.

**How to apply:** Checking and updating all final URLs across all campaigns and assets is a priority task immediately when the new site goes live. Do not wait for 404 reports — proactively audit every ad, sitelink, and asset URL on launch day.

---

## Conversion Goals — Wide at Launch, Narrow Later

At launch, go wide on conversions — all SKUs where it makes sense for the campaign type. Do not restrict to Sizing Kit only across the board yet.

**Why:** Need enough conversion volume for Smart Bidding signals before narrowing. Restricting too early means slow learning phase ramp-up.

**How to apply:** Once sufficient conversion data accumulated (target: 20-30 conversions/month per campaign), revisit narrowing to Sizing Kit / new customer focus. Brand + Search already set to Sizing Kit only as exception — these are keyword-controlled so narrowing is lower risk. Demand Gen and Shopping stay wide until data supports change.

**Budget:** Do not lock in daily budgets during pre-launch checks — user adjusts at go-live based on remaining monthly spend.

**Content suitability:** Standard inventory confirmed and saved — applies to YouTube, Discover, Display, GVP. No excluded types, themes, or placements currently. Revisit exclusions post-launch once placement data accumulates.

---

## Relaunch Bidding Philosophy — Data Collection First

Prioritise data collection over efficiency at launch. Bids, targeting, and schedules should be set more open/aggressive rather than restricted. Don't underbid, don't narrow audiences, don't add ad schedules early. Let data accumulate first, then optimise.

**Why:** 2-year dormant account has zero signals. Restricting too early means slow data collection and poor Smart Bidding ramp-up when the time comes.

**How to apply:** When setting bids at relaunch, lean toward the higher end of a sensible range. Leave schedules open, audiences on observation, and match types as broad as appropriate for the campaign type. Flag when enough data exists to start restricting.

Brand campaign ad group max CPC set to £0.60 at launch (vs £0.10 default found) — confirmed correct approach.

---

## Demand Gen — Language/Location: Set at Ad Group Level

Language and location for Demand Gen cannot be set at campaign level — they are ad group level settings. No ad groups exist yet (Demand Gen is a blocker — no creative assets).

Set language (English) + location (United Kingdom) when creating the first asset group.
