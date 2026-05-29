# Contrelle Search QS Fix — LP Changes, Negatives, Keyword Pauses

## Context

All Search RSAs in "Stress Incontinence & Bladder Leaks" and "Devices & Solutions" currently route to the Sizing Kit product checkout page. Post-click quality is BELOW_AVERAGE across every non-brand keyword — primary driver of QS 1 on "urinary incontinence" and "bladder control". Info/consideration-stage searchers are landing on a product purchase page, which is the wrong experience.

Competitor and wrong-intent terms (tena, NHS, surgery, incontinence pads) are being matched and burning budget with no conversion potential. Two keywords should be paused entirely.

This plan fixes the three root causes: LP mismatch, wasted impression share on bad terms, wrong keywords.

---

## Change 1 — RSA Final URL updates (6 ads, API script)

| Ad group | Ad count | New Final URL | Rationale |
|----------|----------|---------------|-----------|
| Stress Incontinence & Bladder Leaks | 3 RSAs | `/getting-started/` | Page has embedded Sizing Kit link under "How do you know which size?" — shorter path to conversion for consideration-stage searchers |
| Devices & Solutions | 3 RSAs | `/product-information/` | Covers 5 modes of action, 3 sizes, clinical evidence — right for device-comparison searches |
| Running & Exercise | — | unchanged (Sizing Kit) | Purchase intent, keep as-is |
| Brand | — | unchanged (Sizing Kit) | Brand intent, keep as-is |

**Script to update:** `.claude/skills/gads-context/scripts/update-search-ad-lps.js`
- Already created but assigns `/product-information/` to all 6 ads
- Need to fix: SUI block → `/getting-started/`, Devices block → `/product-information/`

**Ad resource names:**
- SUI: `adGroupAds/198300657267~804555694752`, `~804555694755`, `~804555694758`
- Devices: `adGroupAds/198300657307~804555694761`, `~804555694764`, `~804555694767`

---

## Change 2 — Update pending SUI-Generic RSA draft

File: `created/rsas/20260526_search-sui-generic.csv`
- Currently has `/product-information/` as Final URL
- Update to `/getting-started/` to match the SUI ad group LP decision

---

## Change 3 — Add negatives to Search campaign (new script)

**Campaign:** Contrelle - Search (`customers/4839774980/campaigns/23740334531`)
**Match type:** PHRASE for all, unless noted

| Category | Terms |
|----------|-------|
| Competitors | tena, efemia, coloplast, always discreet, jude |
| Wrong product | incontinence pads, incontinence pants, incontinence underwear |
| Wrong intent | nhs, incontinence surgery, bladder surgery, male incontinence, bedwetting |

Total: ~14 terms. New script: `add-search-negatives.js`

---

## Change 4 — Pause 3 wrong-intent keywords (new script)

| Keyword | Match | Resource name | Reason |
|---------|-------|---------------|--------|
| pads for incontinence | BROAD | `adGroupCriteria/198300657267~755335995` | Wrong product category |
| incontinence therapy | BROAD | `adGroupCriteria/198300657267~159435500` | Clinical/NHS pathway |
| incontinence therapy | PHRASE | `adGroupCriteria/198300657267~301385012396` | Clinical/NHS pathway |

New script: `pause-wrong-intent-keywords.js`

---

## Execution order

1. Edit `update-search-ad-lps.js` — fix SUI LP to `/getting-started/`
2. Dry run `update-search-ad-lps.js --dry-run` → apply if clean
3. Edit `created/rsas/20260526_search-sui-generic.csv` — update Final URL
4. Write + dry run `add-search-negatives.js` → apply if clean
5. Write + dry run `pause-wrong-intent-keywords.js` → apply if clean
6. Log to `context/memory/2026-05-27.md`

---

## Verification

After running:
- MCP: `SELECT ad_group_ad.ad.final_urls FROM ad_group_ad WHERE campaign.id = 23740334531` — confirm 3 SUI ads → getting-started, 3 Devices ads → product-information
- MCP: `SELECT campaign_criterion.keyword.text FROM campaign_criterion WHERE campaign.id = 23740334531 AND campaign_criterion.negative = TRUE` — confirm ~14 new negatives present
- MCP: `SELECT ad_group_criterion.keyword.text, ad_group_criterion.status FROM ad_group_criterion WHERE ...` — confirm 3 keywords PAUSED
