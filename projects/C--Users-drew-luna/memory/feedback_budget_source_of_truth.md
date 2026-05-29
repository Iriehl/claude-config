---
name: Budget source of truth
description: Never infer or update monthly budgets from API daily cap data — user-stated figures are the only source of truth
type: feedback
originSessionId: 17415c11-e744-483b-8ce4-255fd5965f9a
---
Never use Google Ads API `campaignBudget.amountMicros` (daily caps) to calculate or update monthly budget figures in business.md or any context file.

Daily caps in the account are a pacing mechanism and do not equal the client-approved monthly budget. They will differ and that's intentional.

**Why:** User explicitly corrected this when it caused incorrect budget figures to be written to business.md from API data. Led to wrong totals and loss of accurate client-approved numbers.

**How to apply:** Budget figures in business.md come from what the user states or the client has approved. If monthly spend from reporting differs, flag it to the user verbally — never silently update the budget table. To check actual spend, pull campaign metrics, not budget config.
