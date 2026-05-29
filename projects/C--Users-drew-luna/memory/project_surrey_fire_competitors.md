---
name: Surrey Fire Competitor Intelligence
description: Competitor ad data gathered 2026-04-24 via Google Ads Transparency Centre — who they are, what they say, threat level
type: project
originSessionId: 1ec6b1b6-da4f-4ca5-a0a0-067d2c8c21c6
---
Competitor ads pulled 2026-04-24 via Google Ads Transparency Centre (not DataForSEO — credentials not configured). Files in `context/competitor-ads/*.csv`. Config domains set in `config/ads-context.config.json`.

**Why:** Auction insights from Google Ads UI identified these 7 domains bidding in Surrey Fire's auctions.

## Competitor Breakdown

| Domain | Entity | Type | Threat |
|--------|--------|------|--------|
| securicofireandsecurity.co.uk | Synergy Security Ltd | Fire & security services | **High — direct** |
| peninsulagrouplimited.com | Peninsula Business Services | H&S / HR consultancy | Medium — broad H&S terms |
| fireprotectionshop.co.uk | Fire Protection Shop | Ecommerce (extinguishers) | Medium — product purchase terms |
| simplyextinguishers.co.uk | Fire Protection Online Ltd | Ecommerce (extinguishers) | Medium — product purchase terms |
| firedetectionshop.co.uk | Fire Detection shop | Ecommerce (detection equipment) | Low — trade/product terms |
| adt.co.uk | ADT Fire and Security PLC | B2C home security | Low — broad security terms |
| verisure.co.uk | Verisure Services UK | B2C home security | Low — broad security terms |

## Securico Key Angles (primary direct competitor)

- "Fire Alarm Maintenance" — competing directly on Surrey Fire's core service
- "We Beat Any Quote" — aggressive price positioning
- "Free Site Survey" + "10% discount" — removes commitment barrier
- "Local engineers on standby. Fast emergency call-outs 24/7"
- Operated under Synergy Security Limited (trading as Securico Fire & Security)

## Surrey Fire Counter-Positioning vs Securico

- 25+ years (est. 1997) vs no stated tenure for Securico
- 13 branches across South-East vs single-operator feel
- BAFE SP101/SP203 + ISO9001 accredited — Securico doesn't lead with accreditations
- 4.8/5 quality rating, 96% would reuse — stronger social proof
- 24/7 emergency call-out within 2–4 hours — need to match specificity on response time

## Product Shop Counter-Positioning

Fire Protection Shop, Simply Extinguishers, Fire Detection Shop are all product ecommerce. They win on price/SKU range. Surrey Fire should NOT try to compete on product price — differentiate on service, installation, compliance support, and warranty on the "Buy Fire Extinguishers" campaign.

## Competitor Brand Pollution in Search Terms (2026-05-18)

Search term audit (180d) found ~30 competitor brand names appearing in search terms, ~£203 total spend. These are wasted — Surrey Fire doesn't bid on competitor terms and competitors' brand-intent traffic won't convert.

**Action:** Create "Competitor Brands" shared negative list (phrase match), link to all 5 active campaigns. In progress — use search-term-optimizer or write an API script.

The competitor brand names from the 7 known competitors + any other brands in the search term data should go into this list. Cross-reference `context/google-ads/data/search-terms.csv` for the full set of brand names triggering.

## How to Apply

- When writing RSAs or offers: lean into accreditations and trust signals vs Securico's price angle
- "Buy Fire Extinguishers" campaign: service + compliance framing, not price matching vs product shops
- Do not recommend competitor term bidding — not in current strategy per business.md
- When building competitor brand negative list: phrase match the brand names, not exact (catches variants)
