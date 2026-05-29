# Contrelle: Conversion Value Fix Plan

## Context

Conversion values in Google Ads are inflated vs product prices:
- Purchase - Sizing Kit: averaging £12.19 (product = £8.99)
- Purchase - 5 Pack: averaging £23.99 (product = £15.99)

Values should be **item price minus shipping cost**, not just item price. But they're coming in HIGHER than product price — so the deduction isn't happening, or the wrong base value is being used.

**GTM setup is complex:**
- Tracking runs for both Google Ads and GA4, both from GTM
- Custom scripts running
- A "prefire GA4" event in the mix
- Values calculated across multiple GTM variables (not a simple ecommerce.value read)
- All fires off the `purchase` event (confirmed present)

**Shipping logic (intended behavior):**
| SKU | Shipping | Rule |
|-----|----------|------|
| Sizing Kit | Own price | Always charged |
| 5 Pack | Own price | Always charged |
| 30 Pack | Free | Always free |
| Any order | Free | If cart total exceeds threshold X |

So the intended conversion value = `item_price - applicable_shipping_cost`

---

## Diagnostic Approach

### Step 1: GTM Preview Mode on Staging Site

Enable GTM Preview mode and point it at the staging site. This shows every tag that fires, every variable value, and every trigger condition — far more useful than Chrome DevTools alone for a complex GTM setup.

**Test purchases to run (4 scenarios to cover all shipping rules):**

| Test | Items | Expected Value Logic |
|------|-------|----------------------|
| 1 | Sizing Kit only | £8.99 - sizing kit shipping |
| 2 | 5 Pack only | £15.99 - 5 pack shipping |
| 3 | 30 Pack only | £78.99 - £0 (free) |
| 4 | Sizing Kit + 5 Pack (combined above free threshold?) | Depends on threshold |

For each purchase, in GTM Preview note:
- Which Google Ads tags fire?
- What value does each tag send?
- Which variable is supplying that value?
- Is the shipping deduction variable returning the right amount?

---

### Step 2: Trace the Broken Variable

Once we see which scenario fails (Step 1), trace backward through the GTM variable chain:

- What is the value variable returning?
- What is the shipping variable returning for that order?
- Where does the maths break down?

Likely suspects:
- Shipping variable returning `undefined` or `0` in some cases → no deduction applied
- Prefire GA4 event firing with incomplete data layer → variable reads wrong state
- Free-shipping threshold logic misconfigured (wrong comparator, wrong field)
- Multi-SKU order: value variable reading full cart total instead of item-line total

---

### Step 3: Fix the Specific Variable(s)

Based on what Step 2 reveals — targeted fix to the broken part only. Don't rebuild what's working.

Options depending on finding:
- **If shipping variable returns wrong value:** Fix the lookup/condition logic for that shipping tier
- **If prefire GA4 is reading data layer too early:** Adjust firing sequence or use a data layer ready trigger
- **If multi-item orders break the calculation:** Add item-specific scoping to the value variable
- **If threshold logic is wrong:** Fix the comparator (check: is threshold compared against cart total before or after shipping?)

---

### Step 4: Validate in GTM Preview

Re-run the same 4 test purchases in GTM Preview. Confirm:
- Each tag fires once per applicable SKU
- Value sent = correct item price minus correct shipping
- No tag fires with cart total or unexpected value

---

### Step 5: Publish GTM + Monitor

Publish with clear version note. Check Google Ads in 24-48hrs — conversion values should normalise to near-product prices (minus shipping).

---

## What We Are NOT Touching

- WooCommerce (purchase event confirmed working — not the source of the bug)
- Google Ads conversion action settings (default values there are correct fallbacks)
- GA4 tag logic (separate, not causing this — fix Google Ads values first)
- The 3-action structure (Sizing Kit / 5 Pack / 30 Pack split is correct for business strategy)

---

## Access Needed

| Tool | Purpose |
|------|---------|
| GTM Preview mode | Diagnose exact variable values per scenario |
| Staging site + test card | Safe test purchases across all 4 shipping scenarios |
| GTM workspace | Fix the broken variable(s) |
| Google Ads | Verify values after 24-48hrs |
