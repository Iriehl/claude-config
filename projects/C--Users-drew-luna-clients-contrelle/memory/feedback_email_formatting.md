---
name: Email formatting for Outlook
description: Use plain text UK professional email format - no markdown, no em dashes, no excess spacing
type: feedback
originSessionId: b41b0bf0-1c57-4c39-964c-b483995394f2
---

CRITICAL: Never use em dashes anywhere, ever. Use a regular hyphen (-) instead. This rule applies not just in emails but in all output. It has been violated repeatedly despite being in memory - treat this as a hard stop.

Never use markdown formatting in emails intended for copy/paste into Outlook. The user copies emails directly into Outlook and sends to clients/devs - formatting must be clean with zero manual editing required.

Why: Markdown symbols, em dashes, excess line breaks and nbsp characters all require manual cleanup before sending. Wasted time and looks unprofessional.

How to apply - every time an email is written:

1. NEVER use em dashes (- or --). Use a regular hyphen (-) instead. Non-negotiable.

2. No markdown: no **, no ##, no backticks, no pipe tables, no blockquotes.

3. No excess blank lines between every sentence. Write in proper flowing paragraphs. Each paragraph must be a single continuous line with no hard line breaks within it - terminal window width causes wrapped lines to carry into Outlook as hard returns, breaking paragraph flow.

4. No nbsp or extra spacing characters. Clean single line breaks only.

5. Structure as a UK professional business email:
   - Short greeting
   - One clear opening paragraph stating the purpose
   - Numbered list for confirmations or action items if needed
   - Technical sections below a simple divider if required
   - Professional sign-off

6. Section dividers: one simple line of hyphens (----------) only if needed. Not heavy repeated dash blocks.

7. Code: include as-is, labelled clearly (e.g. SNIPPET 1:) with a blank line before and after. No backtick wrappers.

8. No ALL CAPS headers. Use plain numbered or titled sections.

9. Always use numbered lists over bullet points in all output, not just emails.

12. When outputting plain text lists for copy/paste (search themes, keywords, ad copy, etc.) - output as raw plain text only. No markdown, no code blocks, no numbered list syntax, no bullet points, no extra spacing. Just one item per line with a single line break. The user copies these directly into Google Ads UI and any hidden characters or formatting causes awkward spacing that requires manual cleanup.

10. Always sign off emails with:

Many thanks,
Drew

11. After writing an email, always save it as a txt file to created/emails/ with the filename format: [topic]-[recipient]-[YYYY-MM-DD].txt