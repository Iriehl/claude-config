---
name: feedback_email_save_location
description: Where to save emails when user asks to create one - always use created/emails/ folder
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 67028154-b3db-4685-a403-ea51a8c4ec3d
---

Always save emails to `created/emails/` within the client project directory.

**Why:** User asked for emails to go there and expects this automatically without being told each time.

**How to apply:** Any time the user asks to "create an email" or "put the email in emails", write it to `created/emails/YYYY-MM-DD-description.txt` as plain text. See also [[feedback_email_formatting]] for formatting rules (no markdown, no em dashes).
