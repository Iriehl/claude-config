---
name: feedback_contrelle_encoding_cleanup
description: Contrelle ad copy contains Â encoding artifacts — fix proactively when touching any ad copy or RSA files
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 2ae387bb-25e9-4794-beeb-985b9d33d61e
---

Existing Contrelle ad copy in Google Ads contains "Â" encoding artifacts (UTF-8/Latin-1 mismatch, e.g. "Â®" instead of "®", "Â£" instead of "£").

**Why:** Spotted in ads.csv data — likely introduced when copy was originally uploaded or exported.

**How to apply:** Whenever reading, drafting, or editing any Contrelle ad copy or RSA CSV, scan for "Â" and strip it before saving or outputting. Flag to user if found in existing live ads that need correcting in Google Ads Editor.
