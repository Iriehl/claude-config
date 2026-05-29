---
name: feedback-gtm-shared-container
description: "Contrelle GTM is a shared container — only touch Google Ads and GA4 tags. Cannot delete, can only pause."
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 375620ae-1856-4729-ab90-759578f11037
---

Contrelle's GTM container (GTM-KMN2SNX) is a SHARED container. It contains tags from other platforms and parties.

**Why:** Other teams/platforms share the same container. Deleting anything risks breaking their setups.

**How to apply:**
- Scope all GTM work to Google Ads conversion/remarketing tags and GA4 tags only
- Never delete tags — pause them if they need to be disabled
- Do not touch LinkedIn, Microsoft, Adnxs, or any other third-party tags in the container
- When recommending GTM changes, always frame as "pause" not "delete"
- Consent mode setup is additive only — create new tags/triggers, never modify existing ones. Google consent mode signals (ad_storage etc.) only affect Google tags natively; LinkedIn/Microsoft/Adnxs Custom HTML tags are unaffected by consent defaults.
