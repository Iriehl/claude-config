---
name: no-campaign-level-value-rules
description: NEVER recommend campaign-level conversion value rules - capability does not exist as previously described; mistake was sold to a client and had to be retracted
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 2a2f7efb-5757-450a-9c0d-784021628275
---

NEVER recommend "campaign-level conversion value rules" in Google Ads. Claude recommended this before (pre-2026-06), Drew sold it to a client (Surrey Fire context), and then had to go back and admit it was a mistake. Claude repeated the same suggestion on 2026-06-12 and was corrected again.

**Why:** Conversion value rules DO exist and work, but the conditions are hard-limited to exactly three: geography, device, and audience. Campaign / service line is NOT a condition and cannot be used to vary value per campaign. Claude's training data implies broader flexibility than the product actually has - do not trust it; verify against the current Google Ads UI before describing value rule capabilities.

**How to apply:**
- When differentiating lead value by service line / campaign, the supported routes are: (1) separate conversion actions per LP/form with different default values (via GTM), or (2) budget allocation as the prioritisation lever - usually the right answer at low volume.
- Any time conversion value rules come up, state only the geo/device/audience conditions and verify anything beyond that live before recommending.
- Related: [[surrey-fire-account-state]]
