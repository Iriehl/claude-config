---
name: surrey-fire-negatives
description: "Surrey Fire negative keyword structure — what lists exist, what's live, cross-campaign routing gaps, and what's outstanding"
metadata: 
  node_type: memory
  type: project
  originSessionId: 6ccc121f-1eca-468f-93cc-514277b01407
---

## Shared Negative Keyword Lists (as of 2026-05-18)

All 6 lists verified live via API query.

| List | Keywords | Linked to |
|------|----------|-----------|
| Common Negatives | 27 | All 5 active campaigns + all paused campaigns |
| Out of Scope - Fire Risk Assessment | 9 | All 5 active campaigns |
| Out of Scope - Emergency Lighting | 11 | All 5 active campaigns |
| Out of Scope - Fire Safety Training | 13 | All 5 active campaigns |
| Out of Scope - Passive Fire Protection | 10 | All 5 active campaigns — remove when PFP gets budget |
| Out of Scope - Fire Safety Signs | 10 | All 5 active campaigns |

Source CSVs: `created/negative-lists/out-of-scope-negative-lists.csv` + `created/negative-lists/out-of-scope-campaign-links.csv`
Creation script (idempotent): `.claude/skills/gads-context/scripts/create-negative-lists.js`

**Why this structure:** One list per out-of-scope service so it's easy to remove a list when that service gets PPC budget — instead of hunting for individual keywords across campaign-level negatives.

## Common Negatives — Gaps

Current 27 terms are generic only (free, sign, download, old, vintage, etc.). Missing:
- Competitor brand names
- Fire brigade / emergency services
- B2C home terms (residential, home)
- Generic informational terms

These should be added to Common Negatives or a dedicated "Competitor Brands" list.

## Ad Group Negatives — SKAG Structure

7,889 ad group-level EXACT match negatives, all in Surrey Fire - Fire Alarms campaign. These are routing negatives for the SKAG structure — each ad group blocks every other keyword to prevent cross-serving. **Do not touch** unless doing a full SKAG restructure. 1,070 of these are routing negatives (confirmed by audit).

## Cross-Campaign Routing Negatives — DONE (2026-05-18)

24 phrase-match campaign-level negatives live across 3 campaigns. Source: `created/negative-lists/routing-negatives.csv`
Script (general-purpose for any campaign-level negative CSV): `.claude/skills/gads-context/scripts/add-campaign-negatives.js`

- Installation (12): servicing, annual service, service contract, maintenance, annual inspection, fire alarm, smoke alarm, smoke detector, alarm system, alarm panel, buy, purchase
- Servicing (6): fire alarm, smoke alarm, alarm panel, alarm system, buy, purchase
- Buy (6): servicing, annual service, service near me, maintenance, fire alarm, smoke alarm

Fixed estimated £434 routing leak over 180d. Verified via API.

## Account Scale

~1.5M total keywords/negative keywords in the account (per Google Ads Editor). Mostly from: SKAG routing negatives in Fire Alarms (7,889) + paused geo-split campaigns (16 paused legacy campaigns across Surrey, Hampshire, Middlesex, West London, Chelsea, Hammersmith, Berkshire). Active account is much leaner.

## Competitor Brand Negatives — DONE (2026-05-18)

"Competitor Brands" shared list live — 36 phrase-match negatives, linked to all 5 active campaigns.
Source: `created/negative-lists/competitor-brands-negative-list.csv`
Covers: wfp fire, surrey security service, scorpio fire, cannon fire safety, ohms security, direct alarms and security, safefire direct, jewel passive fire, ansul, amerex, tyco fire, thameside fire, elan fire, chilman fire, stealth fire, ips fire, churches fire, artius fire, jla fire, sd fire solutions, jtl fire, sureserve, scutum, b9 fire, ardenoak, stand by fire protection, securico, fire protection shop, simply extinguishers, fire detection shop, safelincs, fire angel, apollo fire detector, bespoke detection services, kbo camberley, fireworks fire protection

[[Surrey Fire Campaign Scope]] [[Surrey Fire Account State]]
