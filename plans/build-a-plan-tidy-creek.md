# Allure Onboarding — Outstanding Items Plan

## Context

Allure onboarding has been running since late April 2026. The core business context, tracking audit, search term audit, account audit, and Phase 1 campaign changes are all done. Today (2026-05-30) the strategy audit (86%) and offer audit (67%) completed, and client confirmed NCA details. The financial validation email has been replied to.

What remains falls into three tiers: **blocking NCA** (the primary strategic goal), **foundations not yet closed** (skills, reporting, tracking fixes), and **GMC/Shopify housekeeping**.

---

## Outstanding Items

### Tier 1 — Blocking NCA Activation (Drew actions, this week)

**1. Customer Match upload**
- Source: Shopify Admin > Customers > export, filter for all purchasers
- Upload to: Google Ads > Tools > Audience Manager > Customer Match list
- Flagged as overdue in actions file since 2026-05-18
- NCA cannot be enabled until this is live and populated

**2. GTM: add new_customer parameter to purchase tag**
- Tag: purchase conversion tag in GT-K46MNTM
- Add: `new_customer` parameter set to `true` when first-time buyer (check Shopify order tags or customer.ordersCount == 1)
- Reference: D47 WARN from tracking audit (context/analysis/tracking-audit.md)
- NCA cannot be enabled without this signal

**3. Enable NCA on PMax 20% Best — AFTER 1 + 2 are live**
- Campaign: Allure - PMax - 20% Best
- Setting: Goal-optimised shopping > New customer acquisition > 20% value premium
- Do not action until Customer Match is uploaded AND new_customer tag is firing

---

### Tier 2 — Strategy Foundations

**4. Set specific numeric revenue target**
- D10 WARN from strategy audit (2026-05-30, 86% Good)
- "Grow from £7,282" is not actionable; need a monthly figure with a date (e.g. "£12,000/month by December")
- Run: `/strategy-specialist --execute goals` to set this interactively
- Context from client email: £17-18K/month all-channel target; Google Ads is ~33% of that = ~£5,600-6,000/month feels conservative given current £7,282 baseline. Discuss with Drew what the right stretch target is.

**5. PMax consolidation — awaiting client decision**
- Email sent 2026-05-13 (created/emails/2026-05-13-pmax-split-review.txt)
- Recommendation: consolidate PMax 20% Best + PMax 80% Other into single campaign
- Evidence: 237pp ROAS decline, ~£37,500 revenue lost over 15 months
- Status: waiting on Josh. Chase if no response by 2026-06-06.
- Do not execute without explicit client confirmation.

**6. Brand IS check — overdue**
- Change made 2026-05-13 (Target IS 80%, Top of page, £1 max CPC)
- 14-day check was due ~2026-05-27 — check now
- Pull IS data via MCP: impression_share, search_rank_lost_impression_share, search_budget_lost_impression_share for Brand campaign
- If IS has not recovered toward 50%+, strategy change may need refinement

**7. /strategy-specialist skill — not yet run**
- Flagged HIGH in actions file; was blocking ST-E01 (overridden manually)
- Needed before next negate or promote run
- Run after numeric target is set (step 4)

---

### Tier 3 — Offer and Copy

**8. /offer-maker — develop angles from offer audit**
- Offer audit: 67% (Needs Attention, 2026-05-30)
- Three priority gaps: no unique mechanism (D05 FAIL), permanent sale undermining urgency (D07/D08), value prop is a category label not a promise (D01 WARN)
- Run `/offer-maker` using offer-audit.md findings to generate new message angles
- This feeds RSA copy updates for PMax 20% Best and Standard Shopping

**9. RSA refresh — after offer angles defined**
- Current RSAs were created pre-audit; copy will be stronger once offer angles are defined
- Run `/rsa-maker` with updated offer angles once step 8 is done
- Target: PMax 20% Best (NCA engine) first, then Standard Shopping

---

### Tier 4 — Tracking Fixes

**10. CMP consent banner — client action**
- D28 FAIL from tracking audit: all CM v2 signals pre-granted on load, no user-interaction step
- UK GDPR/PECR exposure
- Fix: client installs Shopify CMP app (Cookiebot, OneTrust, or native Shopify)
- Drew to: flag in next client communication; include in monthly report commentary
- Cannot be fixed by Drew — requires client to install and configure a Shopify app

**11. Shorten conversion window: 90d → 30d**
- D31 WARN from tracking audit
- 90-day window inflates ROAS signal for £35 AOV impulse product
- Do in a stable period (not during NCA activation or PMax consolidation)
- Timing: after NCA is live and settled (4-6 weeks post-activation)

**12. Verify enhanced conversions on order confirmation page**
- D46 WARN from tracking audit
- EC confirmed on add_to_cart; cannot verify on thank-you page without a test purchase
- Action: place a small test order to confirm EC is firing on order confirmation
- Low urgency; no conversion data risk if already firing correctly

---

### Tier 5 — Monthly Reports

**13. Set up monthly HTML report**
- Current reporting: Google Data Studio (being replaced with HTML reports)
- Template: created/reports/sample-monthly-report.html exists
- Logo: created/reports/Logos/Allure - Logo Large.jpg confirmed present
- First report: generate for May 2026 (close enough, data available)
- Reference: C:\Users\drew\luna\.claude\rules\monthly-report-guide.md
- Additions promised to client (today's email): new customers acquired, cost per new customer, NCA ROAS, 6-month revenue breakdown by source — include as a one-off analysis alongside next report

---

### Tier 6 — GMC + Shopify Housekeeping (Low urgency)

**14. Claim brand profile in GMC**
- GMC > Marketing > Brand > Claim your brand profile
- One-time, quick. Benefit: control brand description and images in Google Search.

**15. Fix Ireland "Missing Signals" in GMC**
- GMC > Products and shop > Shop quality > Ireland > Fix CTA
- Likely fix: returns policy, business address, or shipping profile for IE

**16. Add descriptions to 14 throw blanket products**
- GMC flagged: Ombre Faux Mohair Throw, Aisling Faux Mohair Throw, Darwin Chenille Tartan Throw, Savannah Chenille Herringbone Throw, Arizona Zig Zag Herringbone Throw + others
- Fix via Shopify product editor; syncs to GMC automatically

---

## Skills Still to Run

| Skill | Priority | When |
|-------|----------|------|
| /strategy-specialist --execute goals | HIGH | This week — set numeric target before next GADS review |
| /offer-maker | HIGH | This week — post audit findings ready |
| /rsa-maker | HIGH | After /offer-maker output |
| /report-generator (strategy + offer audits) | MEDIUM | After reports approved by Drew |
| /search-term-auditor | LOW | Re-run 14-30 days after 2026-05-18 (due ~2026-06-01 to 2026-06-18) |
| /keyword-auditor | LOW | After PMax consolidation settles |
| /competitive-analyst | LOW | Seeds: kingofcotton.com, snoozetherapy.co.uk, mattressonline.co.uk |

---

## Execution Order

1. Customer Match upload (Drew, this week) + GTM new_customer tag
2. Brand IS check (quick MCP pull — overdue)
3. /strategy-specialist --execute goals (set numeric revenue target)
4. /offer-maker (develop message angles from offer audit)
5. /rsa-maker (refresh copy with new angles)
6. NCA enable on PMax 20% Best (AFTER Customer Match + tag live)
7. Monthly report — May 2026
8. Chase PMax consolidation if no response by 2026-06-06
9. GMC housekeeping (items 14-16) — any spare session slot
10. Conversion window fix (after NCA settled, ~late June 2026)

---

## Verification

- NCA active: confirm in Google Ads campaign settings (Goal-optimised shopping > NCA enabled)
- Customer Match: confirm list shows >1,000 matched users in Audience Manager
- new_customer tag: test purchase + confirm parameter fires in GTM preview mode
- Revenue target: confirm business.md updated with specific monthly figure + date
- Offer angles: confirm offer-angles.md (or equivalent) updated post /offer-maker run
- Monthly report: HTML file saved to created/reports/, logo embedded, client-ready
