---
name: project-misona-account
description: "Misona client setup — Customer ID, MCC, config status, account state and active recommendations"
metadata: 
  node_type: memory
  type: project
  originSessionId: e2bbcb85-1756-4c56-b434-219e0cfab30b
---

Misona workspace initialized 2026-05-14. ecommerce client (UK). Sustainable bathroom products (diatomite stone bath mats, organic cotton and bamboo towels).

- Customer ID: 7048948399
- MCC: 2284398748 (same as allure/surrey-fire)
- Website: https://misona.co.uk/ (single domain - all LPs, product pages, and collections are subpaths of this root)
- Location code: 2826 (UK)
- Primary conversion: "Purchase"
- Bidding KPI: ROAS

**Account state (as of 2026-05-14, end of session):**
- 2 active campaigns: PMax (~£17/day, tROAS 260%) and Standard Shopping (~£18-20/day, tROAS 200%)
- Google Ads Customer ID: 7048948399, loginCustomerId: 7048948399 (standalone, not under MCC 2284398748)
- Monthly budget: £1,350/mo total (£1,050/mo existing PMax + Shopping, plus £300/mo additional for Brand + Beach Towel Search — additive, NOT reallocation). PMax and Shopping daily budgets (£20 + £25) are unchanged. Brand £5/day + Beach Towel £5/day are new additive caps. Do NOT use daily cap data as spend source of truth — campaigns may underspend their caps.
- 8 paused/removed campaigns (prior Search, Shopping, Display experiments)
- Blended ROAS: 2.82x reported (~2.04x backend at 1.38x over-attribution ratio)
- CRITICAL: Zero negative keywords anywhere in the account
- GMC: 100 products, ~20 out of stock or seasonal (80 eligible). Feed confirmed clean — no disapprovals.

**Business context (updated 2026-05-16 via Shopify + Google Ads):**
- Products: Bath mats, bath towels, beach towels. Hero: diatomite bath mat.
- AOV: £58.43 (Shopify 30d) | Budget: £1,350/mo total (£1,050 existing + £300 additive for new Search campaigns) | Goal: Growth, maximize revenue
- Gross margin: ~40% at current sale prices (confirmed from Shopify cost data — diatomite mat Blue: £25 sale / £15 COGS)
- Repeat purchase rate: 2-4% per month per cohort (Shopify cohort analysis) — essentially one-time purchase product. CLV ~ AOV.
- Over-attribution ratio: 1.264x VALIDATED 2026-05-17 (Google Ads £40,885 vs Shopify Google Paid £32,339 last-non-direct-click, Jul 2025-Mar 2026 clean window). Prior estimate was 1.38x.
- Break-even ROAS (true): 2.5x Blue / 1.71x Grey | Break-even ROAS (Google Ads, validated 1.264x): 3.16x Blue / 2.16x Grey
- Min Google Ads ROAS for 2x backend floor: 2.53x (was 2.76x)
- PMax at 2.62x: BELOW break-even for Blue (3.16x), ABOVE break-even for Grey (2.16x). Push Grey.
- Shopping is profitable: 6.44x Google Ads ROAS - well above all break-even thresholds
- Total Shopify revenue: £5,376/mo (all channels), 92 orders, 8,220 sessions, 0.99% conversion rate
- Google Ads 30d: £693.93 spend, £2,295.50 conv value, 38 conversions
- Two seasonal peaks: May-Aug (beach towels) + Q4 gifting. Summer peak ACTIVE NOW.
- No Search campaigns active. No brand campaign. No competitor campaign.
- Sale prices rotate across the year (confirmed by user). Margin is not fixed: sale price Blue 40% / Grey 58.3%, full price ~64% both. Break-even ROAS in Google Ads: 3.16x Blue / 2.16x Grey (sale). At full price: ~1.97x both. Always check current site pricing before assessing profitability.

**Brand context (added 2026-05-14):**
- Primary brand colour: Misona Blue #2b3390 | Fonts: Petrona (serif) + Nunito (sans-serif)
- Summer sale active: all products 20-40% off
- £50 free shipping threshold is a natural cart-value lever
- Eco proof points: GOTS, CleanHub, OEKO-TEX, ETI

**Account disruption history (confirmed via changelog 2026-05-14):**
Performance tanked late April/early May due to chaotic budget and tROAS changes:
- Apr 16-27: Gradual budget ramp on both campaigns
- Apr 30: Both budgets spiked to £150/day AND PMax tROAS REMOVED entirely (uncapped bidding) AND Shopping tROAS changed 4x→2.5x — all in one session. This is the disruption event.
- May 1: Emergency correction — budgets slashed to £13/day (Shopping) and £20/day (PMax). PMax tROAS set 3x then changed to 4x within the same hour. Three algorithm disruptions in one session.
- May 2: Shopping nudged to £15/day.
- Both campaigns still recovering. Last major change: 2026-05-01 (13 days ago as of session date).

**Device performance (session 2026-05-14, 90-day data — USE THIS, NOT 30-DAY):**
30-day device data was distorted by the disruption period. 90-day data is the reliable view:
- Standard Shopping Desktop: 3.52x ROAS | Mobile: 3.53x ROAS — essentially identical. No efficiency gap.
- Standard Shopping Tablet: 0 conversions over 25 clicks, £14.49 spend (90 days). Dead device.
- PMax Desktop: 4.91x ROAS | Mobile: 3.28x ROAS | Tablet: 1.96x ROAS (1 conv, very thin)
- IMPORTANT: The 30-day data showed desktop 6.94x vs mobile 2.35x on Shopping — this was distortion from the chaos period, not real device performance.

**Device bid adjustments decided (2026-05-14):**
- Shopping mobile: NO adjustment — 90-day data shows parity with desktop. -25% was reconsidered and dropped.
- Shopping tablet: -100% (turn off) — 0 conversions over 90 days confirmed. User actioning in UI.
- PMax devices: cannot adjust (PMax limitation)

**tROAS changes applied (2026-05-14 session):**
- PMax: 4x → 3x. Delivery at 2.60x (30d) / 3.35x (7d). 3x gives algorithm room to serve. 3x Google Ads = ~2.17x backend — clears 2x floor. Good change.
- Shopping: 2.5x → 2x (set 2026-05-14). At 2x target, Shopping recovered strongly: May 16 £20.11/day 3.58x ROAS, May 17 £19.84/day 4.70x ROAS (impressions jumped from ~300 to 1,400+). HOLD at 200% until 2026-05-21. If 5 straight days of 3x+ ROAS at £15+/day spend, assess whether to raise to 250%.
- Shopping budget: £15/day → £25/day. At ~£18 CPA = ~40 conv/month (above 30-conv threshold for Max Conv Value).

**tROAS change applied (2026-05-17 session):**
- PMax: 3x → 2.6x (260%). Reason: was losing 85% IS to rank — target was unreachable vs actual ~2.6x delivery. 260% gives algorithm room to win auctions while staying just above break-even (Blue BEP = 3.16x = 250%). One change only — no budget change made simultaneously.
- Do NOT touch PMax tROAS or budget again until at least 2026-06-01 (recovery window).

**Performance context (last 7 days, 2026-05-07 to 2026-05-14):**
- PMax: £126.8 spend, 7 conv, £424.5 value, 3.35x ROAS, £15.9/day (vs £20 budget)
- Shopping: £43.2 spend, 2 conv, £225 value, 5.21x ROAS, £5.4/day (vs £15 budget)
- Both underspending. Shopping underspend is the priority problem.

**Search term audit (2026-05-14):** Score 77/100. Top actions: /search-term-optimizer catalog (competitor brands + catalog gaps on PMax which has zero negatives). Two baulane terms confirmed irrelevant (£19.26 + £6.87 spend, 0 conv).

**Tracking audit (2026-05-14):** Score 62%. ALL CRITICAL ISSUES RESOLVED 2026-06-10: click window fixed 90→30 days, zombie primaries removed/demoted, CM v2 consent defaults verified working end-to-end. Key issues: (1) Reduce Purchase click window 90→30 days — driving 1.38x over-attribution, 38% ROAS inflation; (2) Fix CM v2 defaults in Booster EU Cookie (all signals to denied — GDPR gap); (3) Demote 3 zombie primary actions (Android installs, YouTube subs, YouTube follow-on views) to secondary. Purchase signal itself is clean — directional data is reliable.

**Strategy audit (2026-05-14):** Score 52%. Goals & KPIs 47% (Critical). PMax 4x tROAS unachievable (delivering 2.60x 30d / 3.35x 7d) — algorithm throttled. Shopping 2.5x tROAS = ~1.81x backend, below 2x floor. Gross margin still unknown. PMax tROAS corrected to 3x in previous session (3x Google Ads = ~2.17x backend, clears floor). Shopping 2x tROAS still below floor — needs raising to 2.76x.

**/search-term-optimizer catalog — HARD-BLOCKED (2026-05-14):**
Two hard-blocks triggered by pre-flight gate. Cannot generate catalog operations until cleared.
- **M layer block:** Tracking Attribution 31% and Consent 47% both < 70. Risk: 365d catalog validation uses inflated conversion data (38% over-attribution) — would over-protect terms that should be negated.
- **B layer block:** Strategy Goals & KPIs 47% < 70. Risk: catalog uses tROAS as "safe to exclude" threshold — Shopping at 2x (below floor) produces wrong validation cutoffs.
- **To clear:** Fix click window + zombie primaries + CM v2 defaults → re-run /tracking-specialist. Raise Shopping tROAS to 2.76x → re-run /strategy-specialist. Then re-run /search-term-optimizer catalog. OR say "proceed despite tracking-dirty" and "proceed despite strategy-dirty" for override with caveats.

**Platform context files (created 2026-05-16):**
- `context/shopify.md` — full product catalog, pricing, variants, shipping, markets
- `context/gmc.md` — GMC health, feed source, shop quality, competitive gaps
- `context/gtm.md` — container tags/triggers, critical issues, conversion architecture
- `context/ga4.md` — property config, traffic channels, revenue by product, events

**New findings (2026-05-16 platform audit):**
- Diatomite Stone Bath Mat confirmed #1 revenue driver: £457/week, 13 units (May 3-9)
- Ribbed Organic Cotton Towels: 2nd by revenue (£248/week) BUT page views crashed -79.8% week-on-week — investigate
- GMC: now 109 products (was 100 on 2026-05-14). All approved. CSS is Channable.
- Feed source confirmed: Content API via Shopify Google & YouTube app. Feed label: GB.
- US market active: own fulfillment via Efulfillment Service (Express $25, Standard $10, Free $100+)
- GA4 active via Shopify G&Y app (GTM GA4 tags paused — already migrated)
- Add-to-cart growing 3x faster than purchases (+34.6% vs +11.8%) — checkout friction likely
- Unassigned sessions spiked +257.6% in GA4 — UTM coverage gap or new untagged source
- UK traffic = 52% of sessions, USA = 23% and growing +27.7% — international opportunity
- Delivery gap: competitors average £2.16/order vs Misona £4.95 (under £50) — flagged by GMC

**Conversion window settings (updated 2026-06-09):**
- Click-through: 30 days (was 90 days - fixed 2026-06-09)
- Engaged view: 1 week
- View-through: 3 days

**CRITICAL ACTION — GTM migration (must do before Shopify deprecates GTM tracking):**
Shopify is removing GTM-based tracking support. GA4 already migrated to Shopify G&Y app (GTM tags paused). Google Ads conversion tag (GADS Conversion Tracking UK, AW-10807471978) is NOT yet migrated — still fires via GTM. If Shopify removes GTM before migration, conversion tracking will go dark. Action: migrate GADS conversion tag to Shopify Google & YouTube app ASAP.

**Product feed update (2026-05-17):**
- New towel launched — expands Shopping/PMax addressable inventory, helps with underspend structural limit
- Green diatomite bath mat colour coming soon — price/COGS TBC from client before launch

**Diatomite Stone Bath Mat — variant sales rank (confirmed 2026-05-17):**
| Rank | Colour | Price | Margin | Google Ads BEP | Stock |
|------|--------|-------|--------|----------------|-------|
| #1 | Grey | £36 | 58.3% | 2.16x | 111 units |
| #2 | Blue | £25 | 40.0% | 3.16x | 212 units |
| #3 | Off White | £36 | 58.3% | 2.16x | 0 (OOS) |
| #4 | Green | TBD | TBD | TBD | Coming soon |

Shopify confirmed: Off White "Sell when out of stock" = OFF, inventory tracked ON. Feed automatically sends out_of_stock to GMC. No campaign exclusion needed — keep in product groups for instant reactivation when restocked. Client asked for Off White restock timeline and Green variant details (price + COGS before launch).

**Conversion volume (monthly, validated 2026-05-17 via MCP):**
- Summer peak (Jul-Aug 2025): 99-106 total conv/mo (PMax 64-74, Shopping 32-35)
- Off-peak clean window avg: PMax 43/mo, Shopping 41/mo
- Disruption (Apr 2026): 33 total (PMax 22, Shopping 11)
- May 2026 partial (1-17): 23 total (PMax 17, Shopping 6)
- tROAS minimum threshold: 50/mo per campaign (absolute min 30). Pre-disruption was borderline.
- 3-campaign Shopping split DEFERRED to July-August — not viable at current volume.

**tROAS targets locked in going forward (2026-05-17):**
- Shopping: 200% (2x) — hold until 2026-05-21. Algorithm delivering 3.5-4.7x actual. Do not change again until 5+ days of sustained spend confirmed.
  - Assessment date: 2026-05-21. If 3x+ ROAS consistently at £15+/day → consider raising to 250%. If erratic/low → hold longer.
  - Long-term range: 200-250%. Market naturally delivers 3.5-4.5x.
- PMax: 260% — hold until 2026-06-01 checkpoint. Do not touch.
  - If recovering by June 1 (IS lost to rank trending down, spend £15+/day): raise to 280-300%
  - Long-term steady state target: 300-350% (once recovered)

**Realistic ROAS expectations (confirmed from clean window data):**
| Campaign | Peak (Jul-Aug) | Steady state | Winter (Jan-Mar) |
|----------|---------------|--------------|-----------------|
| PMax | 4.0-4.5x | 4.0-4.5x | 3.5-4.0x |
| Shopping | 3.5-4.5x | 3.5-4.5x | 3.5-4.5x |
| Blended target | ~4.17x | ~4.17x | ~3.7-4.0x |

Pre-disruption blended 4.17x (clean 9-month window) is the benchmark to return to. Do not plan to beat it materially — it was already a strong number for this niche.

**Campaign status update (2026-06-09):**
- Misona - Beach Towels (ID 23883396159): PAUSED. Budget (£150/mo) redistributed - PMax raised to £750/mo, Shopping raised to £600/mo.
- New YouTube video to add to PMax as video asset: https://www.youtube.com/shorts/dFs_OwaCrac (add via UI: PMax campaign → Asset groups → Add asset → Video)

**New campaigns — LIVE as of 2026-05-28:**
- Misona - Brand (ID 23888625509, ENABLED) — TIS 100% absolute top, max CPC £1.50, £5/day
  - Ad group: Brand | 7 brand keywords (exact + phrase) | 2 RSAs enabled
  - IDs: campaign 23888625509, ad group 197855909718
- Misona - Beach Towels (ID 23883396159, ENABLED) — Manual CPC £0.80, £5/day
  - Ad group: Beach Towels | 17 exact + 4 phrase non-brand + 9 branded (misona beach towel etc.) | 2 RSAs enabled | 22 campaign negatives
  - LP: https://misona.co.uk/collections/towels/products/large-organic-cotton-striped-beach-towel
  - IDs: campaign 23883396159, ad group 205416270468
- Both campaigns: UK geo targeting, brand negatives added to PMax + Shopping
- Implementation scripts: .claude/skills/gads-context/scripts/ (implement-campaigns.js, implement-assets.js, add-brand-negatives.js, add-beach-towel-keywords.js, add-brand-beach-towel-keywords.js, enable-campaigns.js)

**Customer Match — UPLOADED 2026-06-09 (in client meeting)**

**Client reporting requirements (updated 2026-06-09):**
NCA is NOT planned for Misona. Omit New Customer % card, Section 6 (NCA Summary), and Section 7 (Revenue Source Overview) from all Misona monthly reports. NCA applies to Allure only.

**STANDING RULE — "12-month guarantee":**
Client confirmed: do NOT use "12-month guarantee" anywhere in ads — not in RSA descriptions, not in callouts, not in any copy. Removed from all assets 2026-05-28.

**Asset refresh — COMPLETE as of 2026-05-28:**
- Dead structured snippet ID 90676953615 — REMOVED
- New Types structured snippet created and linked to PMax
- 6 new sitelinks live: Beach Towels (PMax + Beach Towels campaign), Our Eco Pledge (PMax + Brand), Loop Bath Mat / Diatomite / Bamboo Towels / Organic Cotton Towels (PMax only)
- 7 callouts live (GOTS Certified Organic, 8799lb Plastic Cleared, Mon-Fri Dispatch by 12pm, 30-Day Returns, Hypoallergenic Materials, Plastic-Free Packaging — PMax+Brand+Beach Towels; Klarna Available — PMax+Brand)
- Free Shipping sitelink Desc2 updated to "Order Before 12pm Mon-Fri"
- "30+ years Experience" callout CONFIRMED ACCURATE — keep as-is

**RSA copy rules (confirmed 2026-05-28):**
- No "12-month guarantee" anywhere
- Same-day dispatch must include Mon-Fri qualifier ("Mon-Fri Dispatch by 12pm", "Same-Day Dispatch Mon-Fri")
- No product prices in headlines (prices change too often — use price asset instead)
- "Removes 1lb Ocean Plastic" removed from Beach Towels RSAs (not a strong beach towel headline)

**Next actions (priority order, updated 2026-05-28):**

MONITOR — new campaigns just launched:
1. Check Misona - Brand + Misona - Beach Towels after 48-72h: impression share, CTR, CPC vs £0.80 default (Beach Towels). Adjust Beach Towels CPC if needed.
2. June 1 checkpoint: PMax IS trend + spend. If above £15/day at 3x+ ROAS → raise to 280-300%.

IMMEDIATE (Drew — no client needed):
3. Add product group monitoring within Shopping: Grey / Blue / Off White / Loop / Everything Else

DO NOT TOUCH UNTIL 2026-06-01 (PMax recovery window):
4. PMax tROAS 260% — leave alone.

JUNE 1 CHECKPOINT:
5. Review PMax IS trend and spend. If above £15/day at 3x+ ROAS: raise PMax tROAS to 280-300%.
6. Rebalance budgets: PMax £17/day, Shopping £18/day (£35/day = £1,050/mo).
7. Assess Shopping conversion volume. Needs 35+/mo before campaign split.

IMMEDIATE (Client — must do ASAP):
8. CRITICAL: Migrate Google Ads conversion tag from GTM to Shopify Google & YouTube app. Shopify deprecates GTM post-checkout scripts end June 2026.
9. ~~Confirm Loop mat COGS~~ — RESOLVED 2026-05-29: £10.00
10. Confirm pricing calendar — when does current sale period end?
11. Off White restock timeline
12. Green variant details — launch date, price, COGS

ONGOING:
13. Client tracking fixes: Purchase click window 90→30 days, demote 3 zombie primaries, fix CM v2 defaults
14. Re-run /tracking-specialist + /strategy-specialist after tracking fixes
15. /search-term-optimizer catalog → baulane negatives + PMax zero-negatives gap
16. /lp-auditor — checkout abandonment
17. GMC: Claim brand profile (minor)

**Completed this session (2026-05-14):**
- Strategy audit: 52% Needs Attention. Report: context/analysis/strategy-audit.md
- Tracking audit: 62%. Report: context/analysis/tracking-audit.md
- Search term audit: 77%. Report: context/analysis/search-term-audit.md
- Shopping tablet -100% device adjustment applied
- Shopping Search Partners disabled
- PMax tROAS: 4x → 3x
- Shopping tROAS: 2.5x → 2x (flagged — below floor, needs fixing)
- Shopping budget: £15/day → £25/day

**COGS FULLY CONFIRMED (2026-05-17, Shopify variant pages + Admin API):**

| Product | COGS | Sale Price | Margin | Google Ads BEP |
|---------|------|-----------|--------|---------------|
| Diatomite Blue | £15 | £25 | 40.0% | 3.16x |
| Diatomite Grey | £15 | £36 | 58.3% | 2.16x |
| Diatomite Off White | £15 | £36 | 58.3% | 2.16x (OOS - do NOT exclude - keep in campaign groups for auto-reactivation on restock) |
| Beach Towel | £12.50 | £30 | 58.3% | 2.16x |
| Ribbed Organic Cotton Towels | £5.00 | £12 (hand towel) | 58.3% | 2.16x |
| Natural Bamboo Cotton Towels | £5.00 | £15 (hand towel) | 66.7% | 1.90x |
| Ribbed Organic Cotton Bath Mat | £7.64 | £25 | 69.4% | 1.82x |
| Loop Organic Cotton Bath Mat | £10.00 [CONFIRMED 2026-05-29] | £30 | 66.7% | 1.90x |

KEY INSIGHT: Blue diatomite mat (3.16x BEP) is the ONLY product where PMax's 2.62x ROAS is below break-even. All towels and ribbed mats are profitable at current PMax performance. Blended account is profitable. Only Blue mat orders at sale price are marginal.

**Pre-disruption baseline CONFIRMED (2026-05-17, Google Ads MCP, Jul 2025 - Mar 2026):**
- PMax: £5,126 spend, £22,456 conv value, 440.7 conv, 4.38x ROAS (£570/mo avg spend)
- Shopping: £4,672 spend, £18,430 conv value, 361.3 conv, 3.94x ROAS (£519/mo avg spend)
- Total: £9,798 spend, £40,885 conv value, 4.17x ROAS (£1,089/mo avg = ~£1,050 budget)
This confirms both campaigns were profitable pre-disruption. PMax was actually the stronger performer (4.38x vs 3.94x Shopping) in the clean window — the April chaos event specifically damaged PMax.

**Completed this session (2026-05-17):**
- Front-load spend test review: concluded. Test never ran (47.5% vs 48.2% W1-2 spend). ROAS declining 4.39x→3.58x. Recommendation: flat spend. Report: context/analysis/revenue-review-frontload-test.md
- Cross-platform investigation: root cause of ROAS decline identified (Apr 30 chaos event). See memory log.
- PMax tROAS: 3x → 260% (2.6x). Confirmed saved in UI.
- COGS validation: all Diatomite variants confirmed £15. Off White OOS confirmed.
- Pre-disruption baseline pulled (Jul 2025 - Mar 2026): 4.17x blended ROAS, £1,089/mo spend.
- Strategy document written: context/analysis/growth-strategy-2026-05.md (phased plan for client approval)
