---
name: RSA policy — UK healthcare/prescription language rules
description: Confirmed safe and unsafe copy patterns for Contrelle RSAs based on PRESCRIPTION_DRUG_SALE disapprovals
type: feedback
originSessionId: 80dcd871-5432-4884-807a-398a264b5685
---
NEVER include in any RSA in this account:
- "prescription" (as a noun or verb — "No Prescription Needed" triggers policy)
- "NHS"
- "GP-recommended" or "GP Ran" or "No GP Needed"
- "SUI" (medical abbreviation)
- "clinical trial" combined with stats in a dense medical ad (e.g. "7 Completed Clinical Trials" alongside other clinical claims — numbers alone like "7 Trials" may pass)

**Confirmed safe:**
- "Available Without Prescription" — appears in approved ad 804555694752; safe to use
- "Drug-Free & Surgery-Free" — safe phrasing
- Benefit language: "Feel in Control Again", "Works From First Use", "Wear It. Forget It. Stay Dry."

**Why:** UK cert for prescription drug sale not held. PRESCRIPTION_DRUG_SALE policy fires on GP references, prescription language, and medical abbreviations. Clustering multiple clinical stats together in one ad can also trigger it even if individual claims pass.

**How to apply:** Before writing or approving any RSA headline or description, screen for the above. Use benefit language as the default; only use clinical language when it's isolated (not alongside other medical claims).

**Encoding rule — applies to ALL CSV outputs (RSAs, PMax, any bulk upload):**
Never use the ® symbol in any CSV file. It corrupts to `Â®` when Excel or Google Sheets opens the file as Windows-1252 encoding. Always write "Contrelle" not "Contrelle®" in any export file.
