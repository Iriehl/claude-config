# Plan: Financial Data Validation Email — Allure & Misona

## Context
Both Allure Bath Fashions and Misona are owned by the same client. We just completed a deep validation pass on both accounts (2026-05-17). Most core numbers are now VALIDATED — but there are meaningful gaps on both sides that are blocking tighter optimization decisions. Since it's one owner, one well-structured email covers both brands, shows we're joined-up across the relationship, and gets the information in a single client action.

The goal is to frame this as confidence, not ignorance: "We've validated everything we can from the data — here are the final numbers that would let us move from safe to optimal."

---

## What We Found — Curated Gap List

### ALLURE — unvalidated or missing

All core figures (48% gross margin, £35 AOV, ROAS, budgets, spend) are VALIDATED from 2026-05-17 session. The gaps are second-order numbers that would sharpen decisions materially:

| # | Gap | Why It Matters | Impact |
|---|-----|---------------|--------|
| A1 | Return rate by product category | We know total returns = ~7.8% by value (£1,626/£20,720), but is this even across categories? Robes and blankets likely have higher rates than towels/mats. Affects true SKU-level margin and PMax product weighting. | HIGH |
| A2 | Product-level margins by category | 48% is blended. If towels are 52% and robes are 38%, we should weight PMax signals differently. Affects which products we push vs suppress. | HIGH |
| A3 | Marketplace commission rate (Mirakl) | 37% of revenue is marketplace. Mirakl takes a cut — typically 10-20%. If it's 15%, their true margin on marketplace orders is ~33% not 48%. Changes the all-channel margin picture materially. | HIGH |
| A4 | Repeat purchase rate / LTV | 40,342 total customers. If >10% rebuy within 12 months, LTV changes what we're willing to pay per new customer. Currently treating all orders as single-purchase. | MEDIUM |
| A5 | Net shipping P&L | AOV is £35, free threshold is £40 — most orders pay shipping. What does a parcel actually cost them to ship? Is shipping net profitable or a cost centre? | MEDIUM |
| A6 | Monthly revenue target for Google Ads | No £ target is set — we're optimizing to ROAS floor but with no revenue growth goal. Needed for Phase 2 budget planning (Jan 2027 consolidation). | MEDIUM |
| A7 | Seasonality peaks | Which months are peak vs trough? Needed to schedule Phase 2 timing correctly. Jan was highest ever — is that driven by gifting carry-through or genuine? | MEDIUM |
| A8 | Permanent sale vs full-price strategy | Products are listed at 25-60% off RRP. Is full-price ever intended? If some SKUs go full-price seasonally, that changes break-even calculations. | LOW |

### MISONA — unvalidated or missing

| # | Gap | Why It Matters | Impact |
|---|-----|---------------|--------|
| M1 | Loop Organic Cotton Bath Mat COGS | Product is in top 5 by revenue (£90 in one week) but cost = null in Shopify. Can't calculate break-even or set a product-specific tROAS target. | CRITICAL |
| M2 | Loaded COGS — inbound freight + CleanHub fee + returns handling | Stated COGS (e.g. £15 for diatomite) may not include freight from supplier, the CleanHub sustainability surcharge, or returns handling. Even +£2-3/unit shifts break-even by 8-12 percentage points. | HIGH |
| M3 | Return rate | Not queried from Shopify at all. At 5% return rate on £58 AOV, that's £2.90/order margin erosion — meaningful against thin Blue margin. | HIGH |
| M4 | Pricing calendar — Blue at sale vs full price | Blue at £25 (sale) = 3.16x BEP. At £42 (full price) = 1.97x BEP. That's a 60% swing in break-even. If they run full-price periods, our tROAS target should move with it. | HIGH |
| M5 | Monthly revenue target (numeric) | "Maximize revenue" is the stated goal but no £ figure exists. Needed to assess whether current trajectory is on track or needs intervention. | MEDIUM |
| M6 | New product pipeline (next 3-6 months) | Any new SKU changes catalog composition and affects Shopping feed structure and PMax product signals. | LOW |

---

## Email Approach

**One email, both brands.** Same owner = cleaner, faster, and signals we're managing the relationship holistically.

**Framing:** "We've completed a full validation pass across both accounts — every number we're using to make decisions is now sourced and documented. There's a short list of final data points that would let us move from conservative to optimal settings. Some need a number, some just need a yes/no confirm."

**Structure:**
1. Short intro (2-3 sentences) — validation complete, high confidence in current data, these remaining items are the difference between safe and optimal
2. **Allure section** — 5-6 questions, most impactful first, framed specifically (e.g. "We're using 48% blended gross margin — does this hold across towels, mats, robes, and blankets? Or are some categories materially higher/lower?")
3. **Misona section** — 4-5 questions, flagging Loop mat COGS and return rate as priority
4. Short close — note that we'll update the account context files once we receive their answers so the numbers stay live and versioned

**Tone:** Peer-to-peer, not audit-y. "We want to sharpen X" not "we're missing Y."

---

## Execution

**Phase 1 — Write the email**
- Draft the .txt email covering both sections
- Save to `C:\Users\drew\luna\clients\allure\created\emails\` (since that's this session's active client dir)
- File name: `2026-05-21-financial-validation-questions.txt`
- Run clipboard copy after save

**Phase 2 — No separate Misona file needed**
- Both brands covered in one file; saves user one action
- After client responds, update `context/business.md` in each respective client folder and mark fields VALIDATED with date

---

## Verification
- Open the saved .txt and confirm no em dashes, no markdown, no encoding artifacts (Â characters)
- Confirm question count is manageable (under 12 total across both brands — don't overwhelm)
- Confirm each question is specific and states what we're currently using as a baseline, so the client can confirm or correct rather than guess what we need
