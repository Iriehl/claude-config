---
name: Surrey Fire Microsoft Ads Account Overview
description: Surrey Fire Bing/Microsoft Ads account structure, campaign performance, and current state
type: project
originSessionId: a28177e9-65be-46dd-ae6a-9c790e30c152
---
## Account IDs
- Manager: `21128225`, Client: `50029484`
- Account name: Surrey Fire & Safety Ltd
- Currency: GBP

## Active Campaign Structure (as of 2026-04-24)

5 active campaigns after consolidation (Wireless FA Search paused 2026-04-24):

| Campaign | ID | Monthly Budget | Type | Bid Strategy |
|---|---|---|---|---|
| Surrey Fire - Fire Alarms | 412735702 | £200 | Search | Max Conversions |
| Fire Extinguishers Servicing [Consolidated] | 554400273 | £312 | Search | Max Conversions |
| Fire Extinguishers Installation [Consolidated] | 554400274 | £703 | Search | Max Conversions |
| Buy Fire Extinguishers | 554639304 | £235 | Search | Max Conversions |
| Wireless Fire Alarms - PMax | 554934981 | £750 | PMax | Max Conversions |

**Note:** In-account daily budget caps need updating to match monthly budgets above — they were set at £2–19/day which is well below the client allocations.

## Changes Made 2026-04-24

- **Wireless Fire Alarms Search paused** — 3.9% IS, 88% lost to rank, only 12 convs/30 days. Budget (£100/mo) moved to PMax (now £750/mo).
- **All campaigns confirmed Max Conversions** — were already Max Conversions, just verified consistent.
- **Phone Number Click demoted to Secondary** on both Google and Microsoft — was inflating conversion counts.

## 30-Day Performance Baseline (pulled 2026-04-24, pre-changes)

| Campaign | Spend | Convs | CPA | IS | Lost to Rank |
|---|---|---|---|---|---|
| Fire Alarms | £230 | 7 | £32.88 | 5.2% | 84% |
| FE Servicing | £365 | 31 | £11.76 | 5.7% | 74% |
| FE Installation | £807 | 34 | £23.73 | 12.2% | 66% |
| Buy Fire Ext | £260 | 24 | £10.84 | 7.3% | 73% |
| Wireless FA Search (paused) | £111 | 12 | £9.24 | 3.9% | 88% |
| Wireless PMax | £778 | 78 | £9.98 | 15.3% | 75% |
| **Total** | **£2,551** | **186** | **£13.71** | | | |

**How to apply:** Use as pre-change baseline. Next meaningful comparison point is mid-May 2026 (after 2–4 week learning period).

## May 2026 MTD Performance (01/05–16/05, from UI)

| Campaign | Daily Budget | Clicks | Impr | CTR | CPC | Spend | IS | IS Lost Rank | Status |
|---|---|---|---|---|---|---|---|---|---|
| Buy Fire Extinguishers | £7/day | 96 | 12,045 | 0.80% | £1.15 | £109.95 | 6.31% | 72.90% | Eligible, limited by budget |
| FE Installation [Consolidated] | £23/day | 268 | 29,399 | 0.91% | £1.23 | £330.00 | 7.56% | 71.61% | Eligible, limited by budget |
| FE Servicing [Consolidated] | £10/day | 108 | 7,764 | 1.39% | £1.43 | £154.92 | 7.37% | 76.16% | Eligible, limited by budget |
| Surrey Fire - Fire Alarms | £6/day | 85 | 10,827 | 0.79% | £1.13 | £95.92 | 4.69% | 76.48% | Limited: not enough conversion data |
| Wireless FA - PMax | £3.25/day | 148 | 8,004 | 1.85% | varies | £311.71 | n/a | n/a | Automatic |

**Account total: 705 clicks, 68,046 impr, £1,002.50 spend MTD (all 58 campaigns including paused)**

**All conversions in May data are proxy goals only — no primary contact conversions recorded.**

## Conversion Tracking — FIXED (2026-05-16)

Root cause: All primary goals used "Code-free, powered by Microsoft Clarity" which never fired real UET events.

**Fixed 2026-05-16 — all three primary goals now on Manual installation:**
- Contact Form Submit (goalId=31022501) — action: `contact_form_submit`, fires via GTM tag "Bing - Contact Form Submission - All Pages" (tag ID 74) on Main Form Trigger
- E-mail Click (goalId=175005177) — action: `email_click`, fires via GTM tag "Bing - E-mail Click - All Pages" (tag ID 28) on E-mail Click trigger
- Phone Number Click (goalId=175005330) — action: `phone_click`, fires via GTM tag "Bing - Phone Number Click - All Pages" (tag ID 31) on Phone Number Click trigger

GTM Version 61 published 2026-05-16, 04:33. Allow 24-48h for first conversion data to appear, 7+ days for meaningful signal. Max Conversions should begin shifting from proxy goals toward real contacts.

Active goals (secondary/proxy — unchanged):
- Contact Us Page View, Dwell 20s, Scroll 70%, Interaction on site, More than 2 pages viewed

## Device Performance — PMax (May MTD)

- Computers: 94 clicks, £268.15 spend (86.2%)
- Smartphones: 42 clicks, £29.15 spend (9.4%)
- Tablets: 12 clicks, £14.41 spend (4.6%)

**Microsoft Ads PMax is desktop-dominant (86%) — opposite of Google Ads PMax. No device issue here.**

## Search Terms Issues (May MTD, 527 total — all Broad match)

Brand leakage (non-brand campaigns):
- "surrey fire & safety ltd", "surrey fire and safety", "surrey fire and safety limited" all hitting FE Installation

Wasteful terms: competitor brand ("spl fire safety ltd"), training queries, B2C consumer product terms, informational how-to queries.

All keywords Broad match — explains breadth of leakage. No Phrase or Exact keywords providing guardrails.

## Ongoing Issues

- **All campaigns budget-constrained** — IS lost to rank dominates (71–76%), budget loss secondary (16–21%). Primary fix is bid competitiveness — but conversion tracking must be fixed first.
- **Daily budget caps too low** — current in-account caps produce ~£1,500–1,700/mo, below client-approved £2,200/month. Need realigning.
- **Brand leakage** — ~£130–150/mo estimated on branded queries with no brand campaign.
- **Surrey Fire - Fire Alarms: not enough conversion data** — will never exit learning while tracking is broken.

## Account History

58 campaigns total: 5 active (4 Search + 1 PMax), 53 paused legacy geo-targeting era campaigns from 2016–2022 (individual campaigns per London borough/county with £0.05 budgets). Consolidated to current structure Sept 2023 with MaxConversions + broader targeting.

## Competitor Context

No competitor domains configured in `ads-context.config.json` yet.
