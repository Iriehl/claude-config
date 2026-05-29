# Misona — Complete Campaign Review & Summer Peak Build

*Plan created: 2026-05-21*

## Context

Entering summer beach towel peak (May–August), with PMax recovering from April disruption and Shopping under-utilized. Three clear gaps: no brand protection, no beach-towel-specific coverage, and a single PMax asset group serving all products with blended messaging. This plan addresses all three, refreshes the full asset library, and creates a proper approval workflow for ad copy.

Account state at plan creation:
- PMax: 2.62x ROAS, recovering. Budget £20/day (underspending).
- Shopping: 6.44x ROAS, strong. Budget £25/day (underspending).
- No Search campaigns active. No brand campaign. No negative keywords.
- Asset library: 6 sitelinks with descriptions, 7 callouts, 1 structured snippet dead (0 clicks).
- New campaigns requested: Brand Search + Beach Towel Search (£5/day each).

Budget post-plan: PMax £17/day + Shopping £17/day + Brand £5/day + Beach Towel £5/day = £44/day ceiling (~£1,320/mo). PMax underspending + brand low-volume means actual spend will be ~£1,050–1,150/mo. Acceptable for summer peak. Revisit in June.

---

## Phase 1: Website Crawl

Use Chrome DevTools MCP to crawl fresh content from:
- `misona.co.uk/products/large-organic-cotton-striped-beach-towel` — Beach Towel RSA copy, sizes, colours, price, USPs
- `misona.co.uk/collections/beach-towels` (if exists) — collection page copy
- `misona.co.uk/products/loop-organic-cotton-bath-mat` — Loop mat copy, colour options, price angles

Output: Save fresh content to `context/website/pages/beach-towel.md` and `context/website/pages/loop-mat.md`. Use to inform all RSA and asset copy.

---

## Phase 2: Asset Audit + Refresh

### Current Asset State (from research)

**Sitelinks with descriptions (live in PMax):**
| ID | Link Text | Performance | Issue |
|----|-----------|-------------|-------|
| 88741466043 | Diatomite Bath Mat | 4.97x, best performer | — |
| 21392195406 | Ultrasoft Bamboo Towels | 2.31x | Desc2 is product copy, not benefit |
| 21392195409 | Our Brand | 4.76x | — |
| 21392195412 | Organic Cotton Towels | 2.31x | Desc is just product name repeated |
| 88741466046 | Diatomaceous Bath Mat | 2.87x | Duplicate intent with #43 above |
| 90629546095 | Free Shipping Available | 6.60x (tiny sample) | Desc2 is "Luxury Bamboo" — wrong product angle |

**Callouts live:**
Help Reduce Plastic Waste | Sustainable Materials | Family Run Business | 30+ years Experience | Safe Non-Slip Underlay | Free Shipping Over £50 | Environmentally Friendly

Note: "30+ years Experience" — verify this is accurate for Misona (brand is ~3+ years old per account context; may be inherited from another client).

**Structured snippets:**
5 snippets with clicks, 1 dead (Styles/OEKO-TEX header, 0 clicks, 0 cost — remove).

### New Assets to Create (full list in output document)

**New sitelinks:**
1. **Beach Towels** — "Organic Cotton Striped Beach Towel / Beautiful for Summer 2026" → `/products/large-organic-cotton-striped-beach-towel`
2. **Loop Bath Mat** — "Thick Organic Cotton Bath Mat / 7 Colours, GOTS Certified" → `/products/loop-organic-cotton-bath-mat`
3. **Sale On Now** — "Up to 40% Off Bath Mats + Towels / Eco Home Textiles on Sale" → `/collections/mats` (or sale collection)
4. **Our Sustainability Pledge** — "1lb of Plastic Collected Per Order / CleanHub + GOTS Certified" → `/pages/our-pledge`
5. Replace desc on **Free Shipping**: remove bamboo reference, use clean "Free UK Shipping on Orders Over £50 / Order Before 12pm for Same-Day Dispatch"

**New callouts:**
- GOTS Certified Organic Cotton
- CleanHub Partner (1lb Plastic Collected)
- Same-Day Dispatch Before 12pm
- 12-Month Quality Guarantee
- 30-Day Hassle-Free Returns
- Klarna Buy Now Pay Later
- Hypoallergenic Materials
- (Remove/verify "30+ years Experience" — flag for client)

**Structured snippet refresh:**
Replace dead Styles/OEKO-TEX snippet with: Header "Products", Values: Diatomite Bath Mats | Loop Cotton Mats | Beach Towels | Organic Towels | Bamboo Towels | Eco Home Textiles

Output: `context/analysis/asset-refresh-2026-05-21.md`

---

## Phase 3: PMax Asset Group Segmentation

**Assessment:** Single asset group serving diatomite mats, cotton mats, towels, beach towels with blended messaging. Separate asset groups allow tailored headlines + images per product intent — low risk (budget is not split; PMax allocates automatically across groups).

**Colour-level asset groups: NOT recommended** at this account scale. Colours are variants, not distinct intents. Splitting by colour fragments learning signals with no meaningful copy differentiation. Revisit at £5,000+/mo.

**Recommended: 3 new asset groups** (replace or supplement the existing general group):

| Asset Group | Products | Angles | Landing Page |
|-------------|----------|--------|-------------|
| Diatomite Stone Mats | Blue, Grey, Off White, Green (launch) | Speed (60 secs), hygiene, stone/natural, anti-mould, eco | /products/diatomaceous-bathmat |
| Loop + Cotton Mats | Loop Organic, Ribbed Organic, Ribbed Cotton Bath Mat | GOTS, soft, thick, colours, cotton comfort | /collections/mats |
| Beach Towels | Large Organic Striped Beach Towel | Summer, stripe, organic cotton, beach, eco, £30 | /products/large-organic-cotton-striped-beach-towel |

15 headlines + 4 descriptions per asset group = 45H + 12D total. Full copy in approval document. Images: use existing Shopify product images per category (already in asset library with 100+ images).

Output: `created/rsas/pmax-asset-groups-2026-05-21-APPROVAL.md`

---

## Phase 4: Brand Campaign

**Why now:** No brand protection = competitors can buy "Misona" at zero cost to us. Brand CPCs are pennies. Defensive must-do before any competitor notices.

**Structure:**
- Campaign name: `Misona - Brand`
- Type: Search
- Budget: £5/day (~£150/mo)
- Bidding: Target Impression Share — absolute top (100% target, max CPC cap £1.50)
- Network: Search only. No Display opt-in.
- Ad group: `Misona Brand`

**Keywords:**
- [misona] exact
- [misona bath mat] exact
- [misona towels] exact
- [misona beach towel] exact
- [misona diatomite] exact
- "misona" phrase (catch plurals/suffixes)

**RSA copy (2 RSAs, for approval):**

RSA 1 — Brand + Hero Product:
- H: Misona | Official Misona Store | Misona Bath Mats + Towels | Diatomite Stone Bath Mat | From £25 Diatomite Mat | Sustainable Home Textiles | GOTS Certified Organic Cotton | Eco-Friendly Bath Mats | Plastic-Free Products | Family-Run UK Brand | Free UK Shipping Over £50 | Same-Day Dispatch Before 12pm | CleanHub - 1lb Plastic Per Order | 12-Month Quality Guarantee | 30-Day Returns
- D1: Sustainable bath mats and towels for thoughtful homes. GOTS certified, plastic-free, beautifully designed. Shop now.
- D2: Diatomite stone bath mat from £25 — dries feet in 60 seconds. Eco-friendly, anti-mould, non-slip.
- D3: Free UK shipping over £50. Order before 12pm for same-day dispatch. 12-month guarantee on all products.
- D4: Organic cotton towels, bamboo towels, and stone bath mats. 1lb of plastic collected with every order.

RSA 2 — Brand + Range:
- H: Misona | Misona.co.uk | UK Sustainable Textiles | Beach Towels + Bath Mats | Organic Towels UK | Diatomite Mat - £25 | Loop Organic Cotton Mat | Eco Bath Collection | Striped Beach Towel - £30 | No Synthetic Materials | Klarna Available | Fast UK Delivery | 30-Day Returns | GOTS + OEKO-TEX Certified | CleanHub Partner Brand
- D1: UK-based sustainable home textiles brand. Bath mats, towels, and beach towels. No synthetic materials.
- D2: From stone diatomite mats to GOTS-certified organic cotton — eco-friendly products with beautiful design.
- D3: 30-day returns. Klarna available. Free UK shipping over £50. Family-run, Swindon-based.
- D4: CleanHub partner: 1lb of ocean-bound plastic collected per order. ETI and OEKO-TEX certified factories.

**Also implement:** Add brand keyword negatives to PMax + Shopping (exact match: [misona], [misona bath mat], [misona towels]) to prevent cannibalization. This can go live before ad copy is approved.

Output: `created/rsas/brand-2026-05-21-APPROVAL.md`

---

## Phase 5: Beach Towel Search Campaign

**Why now:** Summer peak (May–August). Beach towel revenue £90 in GA4 May 3-9 = small but early signal. Search campaign captures high-intent searchers before peak climbs. 3-5 day approval delay = targeting June live date. Every week matters in this window.

**Structure:**
- Campaign name: `Misona - Search - Beach Towels`
- Type: Search
- Budget: £5/day (~£150/mo)
- Bidding: Manual CPC initially (no conversion data yet → can't use tCPA). Switch to tCPA after 30+ conversions.
- Network: Search only. No Display opt-in.
- Landing page: `/products/large-organic-cotton-striped-beach-towel`

**Ad groups + keywords:**

AG1 — `Beach Towels` (volume):
- "beach towel", "beach towels uk", "large beach towel", "striped beach towel", "cotton beach towel", "oversized beach towel", +large +beach +towel

AG2 — `Organic/Eco Beach Towels` (qualifier):
- "organic beach towel", "eco beach towel", "sustainable beach towel", "organic cotton beach towel", "natural beach towel", "plastic free beach towel"

**RSA copy (2 RSAs, for approval — one per ad group):**

AG1 RSA — Beach Towels:
- H: Large Organic Beach Towel | Striped Beach Towels UK | Cotton Beach Towel - £30 | Beautiful Stripe Designs | 5 Colourway Options | Free UK Shipping Over £50 | GOTS Certified Organic | Eco-Friendly Beach Towel | Fast-Drying Beach Towel | Same-Day Dispatch Before 12pm | 30-Day Returns | CleanHub - 1lb Plastic | Family-Run UK Brand | 12-Month Guarantee | Order for Summer 2026
- D1: Large striped organic cotton beach towel, £30. Five beautiful colourways. Free UK shipping over £50.
- D2: GOTS-certified, plastic-free beach towel from Misona. Order before 12pm for same-day dispatch.
- D3: Eco-friendly, super-absorbent, and beautifully designed. 30-day returns. 12-month quality guarantee.
- D4: 1lb of ocean-bound plastic collected per order. Sustainably sourced, ethically made. Shop now.

AG2 RSA — Organic Beach Towels:
- H: Organic Cotton Beach Towel | Sustainable Beach Towel UK | GOTS Certified Beach Towel | Eco Beach Towel - £30 | 100% Natural Materials | No Synthetic Materials | Plastic-Free Beach Towel | Hypoallergenic Towel | CleanHub Partner Brand | Ethically Made Towels | Kind to Skin + Planet | 5 Stripe Colourways | Free UK Shipping Over £50 | 30-Day Returns | Same-Day Dispatch
- D1: 100% GOTS-certified organic cotton beach towel, £30. No synthetics. Better for your skin and the planet.
- D2: Eco-friendly beach towel from Misona — plastic-free, CleanHub partner. Free UK shipping over £50.
- D3: Sustainably made, beautifully designed. Large striped beach towels in 5 colourways. 12-month guarantee.
- D4: Ethically produced in ETI and OEKO-TEX certified factories. 1lb of plastic collected per order. Shop Misona.

Output: `created/rsas/beach-towel-2026-05-21-APPROVAL.md`

---

## Phase 6: Campaign Review Document

Write comprehensive review to `context/analysis/campaign-review-2026-05-21.md`:
- Account snapshot: campaigns, spend, ROAS, IS, budget
- Asset performance table (what's strong, what's dead)
- Budget allocation table: all 4 campaigns post-launch
- tROAS targets: PMax 260% (hold), Shopping 200–250% (hold), Brand TIS 100%, Beach Towel n/a (Manual CPC)
- Negative keyword action list (brand terms in PMax/Shopping, product negatives for brand campaign)
- PMax recovery status check vs June 1 checkpoint criteria
- Next 4-week priority checklist

---

## Phase 7: Client Approval Package + Implementation

### Needs Client Approval (3–5 days):
All RSA copy (Brand, Beach Towel, PMax asset groups) consolidated into single email/doc for client. Format: one section per campaign, numbered headlines (H1-H15), labelled descriptions (D1-D4), URLs. Use `created/rsas/` files as source.

### Goes Live Without Approval:
- Brand keyword negatives in PMax + Shopping (structural, not copy)
- New navigation sitelinks (no descriptions — just link text + URL)
- Dead structured snippet removal (Styles/OEKO-TEX, 0 clicks)
- PMax budget cap: £20/day → £17/day (to accommodate new campaigns)
- Shopping budget cap: £25/day → £17/day (same rationale)
- Campaign shells created in Google Ads (paused, pending copy approval)

### Post-Approval:
- Activate Brand campaign + apply approved RSAs via API
- Activate Beach Towel campaign + apply approved RSAs
- Apply new PMax asset groups with approved copy + images
- Apply new sitelinks (with descriptions) + callouts to all active campaigns
- Unpause Beach Towel campaign — summer window opens immediately

---

## Output Files

| File | Purpose |
|------|---------|
| `context/website/pages/beach-towel.md` | Fresh page crawl for copy |
| `context/website/pages/loop-mat.md` | Fresh page crawl for Loop mat push |
| `context/analysis/asset-refresh-2026-05-21.md` | Full asset audit + new asset list |
| `context/analysis/campaign-review-2026-05-21.md` | Account review + budget plan |
| `created/rsas/brand-2026-05-21-APPROVAL.md` | Brand RSA approval package |
| `created/rsas/beach-towel-2026-05-21-APPROVAL.md` | Beach Towel RSA approval package |
| `created/rsas/pmax-asset-groups-2026-05-21-APPROVAL.md` | PMax asset group copy approval |

---

## Verification

- After campaign creation: MCP query to confirm campaigns exist with correct settings (budget, bidding, network)
- After sitelinks/callouts applied: pull `context/google-ads/data/assets.csv` via gads-context to confirm new assets present
- After brand negatives added: pull negative keyword report to confirm brand terms excluded from PMax + Shopping
- RSA approval: track via approval status field in brand/beach-towel approval documents until client confirms

---

## Questions Pending (from client, pre-existing)

- Loop mat COGS (affects any future tROAS target for dedicated Loop mat coverage)
- "30+ years Experience" callout — verify accuracy before keeping live
