---
name: monthly-reports-system
description: "Monthly Google Ads performance report system — format, delivery, cadence, and prompt for all clients"
metadata: 
  node_type: memory
  type: project
  originSessionId: a23f8f7c-d6fc-4015-b275-52c7a4ab3d59
---

Monthly HTML performance reports being built to replace bi-weekly Data Studio reports for Allure and Misona (same owner, same session). Template extends to Surrey Fire and Contrelle later.

**Full spec:** `C:\Users\drew\luna\.claude\rules\monthly-report-guide.md`

**Cadence:** 2nd Tuesday of each month. Generate on the day itself — data is fully settled by then. Allure, Misona, and Surrey Fire all run same session same day.

**Delivery:** Self-contained HTML file emailed as attachment (logo embedded as base64 - no external refs, no PDF needed). User reviews first, then sends via Gmail.

## Report Status by Client

| Client | Status | Notes |
|--------|--------|-------|
| Allure | Sample complete | Template finalised. Real data pull next. |
| Misona | Next up | Same template, logo at context/brand-assets/logo.jpg, no NCA target |
| Surrey Fire | TBD | Different structure (Google Ads + Microsoft Ads) |
| Contrelle | TBD | Different structure, 100% new customer target |

## Template Decisions (all clients)
- Primary KPI cards: Cost | Revenue | ROAS | New Customer % | Conversions | Average Order Value
- No CPA (redundant for ecom). No device breakdown (removed).
- Current month column bold in all tables
- Colours: #1B4332 (dark forest green), #40916C (mid green) - warm, not neon
- Commentary: What / Why / Expected / Result, conversational, no padding, no fluff
- No em dashes. No "pp". Write "Average CPC", "Conversion Rate" in full. ROAS and CTR are fine abbreviated.
- Products: sorted by revenue descending, 10-15 rows, columns = Product | Conversions | Revenue

## Allure Logo
- Use local file: `created/reports/Logos/Allure - Logo Large.jpg`
- Do NOT use the website webp version (cuts off at height 300px)
- Embed as base64 using PowerShell ReadAllBytes method (see guide)

## Misona Prompt
See `C:\Users\drew\luna\.claude\rules\monthly-report-guide.md` for the full copy-paste prompt.
Run from `C:\Users\drew\luna\clients\misona\` directory.

**Why:** Moving away from Data Studio (complex, stale). HTML is faster, token-efficient, email-ready. Commentary was the main client complaint - now structured with What/Why/Expected/Result per change.
**How to apply:** Reference this and the monthly-report-guide.md at the start of any report session. Check client status column before starting.
