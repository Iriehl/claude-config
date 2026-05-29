---
name: feedback-negative-list-per-service
description: Structure out-of-scope negatives as one shared list per service — makes scope expansion easy without keyword archaeology
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 6ccc121f-1eca-468f-93cc-514277b01407
---

**Rule:** When adding out-of-scope service negatives for Surrey Fire (or any account with planned service expansion), create one shared negative keyword list per service — not a monolithic "out of scope" list.

**Why:** When a new service gets PPC budget, you just unlink that service's list from all campaigns and it's done. If all terms were in one list, you'd have to manually identify and remove individual keywords — which is slow and error-prone at scale.

**How to apply:**
- Naming convention: "Out of Scope - [Service Name]"
- Match type: Phrase match (not exact — too narrow; not broad — too risky)
- Link: All active campaigns on day one
- Unlink: Entire list when the service gets budget approved
- Script handles creation, keyword population, and linking in one idempotent run

**Surrey Fire lists live (2026-05-18):**
- Out of Scope - Fire Risk Assessment (9 terms)
- Out of Scope - Emergency Lighting (11 terms)
- Out of Scope - Fire Safety Training (13 terms)
- Out of Scope - Passive Fire Protection (10 terms) — remove when PFP approved
- Out of Scope - Fire Safety Signs (10 terms)

[[Surrey Fire Negative Structure]]
