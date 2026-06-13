---
name: feedback_copy_lists_as_code_blocks
description: "Always use code blocks for any list the user might want to copy (IDs, URLs, keywords, etc.)"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 81fa5543-00c2-4b57-a32e-d026bfa56811
---

When outputting any list the user might want to copy - IDs, URLs, keywords, product titles, anything list-form - put it in a plain code block, not a markdown table or bullet list.

**Why:** User is on Claude desktop app. Code blocks have a built-in copy button on hover. Tables and bullet lists do not.

**How to apply:** Default to code blocks for: product IDs, Shopify IDs, keyword lists, negative keyword lists, URLs, any batch of values to be pasted elsewhere. Tables are still fine for data with multiple columns where copy isn't the point.

**Keyword formatting inside code blocks:**
- Negative keywords always line-by-line (Google Ads negative entry does not accept comma-separated):
- Positive keywords comma-separated when entry field supports it; otherwise line-by-line
- One keyword per line with match type wrapper included — `"keyword"` or `[keyword]`
- Always include the match type symbol (`" "` for phrase, `[ ]` for exact) inside the code block so it's ready to paste without editing
