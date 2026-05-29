---
name: feedback_gtm_dont_delete_tags
description: Do not delete GTM tags unless they are actively causing a problem. Leave dead/legacy tags in place as backups.
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 8e21e434-be9d-451a-afee-f76738784b1a
---

Don't delete GTM tags (or any tracking assets) just because they appear dead or redundant. Leave them in place unless they are actively causing a measurable problem.

**Why:** We don't work in isolation. Other people may have access to the account, other systems may reference those tags, or there may be a reason they were left that we are not aware of. Deleting "dead" UA tags in GTM Version 62 was flagged as overstepping - they weren't hurting performance and removal carries unknown risk.

**How to apply:** Scope changes to the minimum needed to fix the specific problem. Never proactively clean up dead tags, legacy assets, or anything that looks untidy. If the user wants a cleanup pass they will ask for it explicitly. "Looks dead" or "this is clutter" is never a reason to delete anything.
