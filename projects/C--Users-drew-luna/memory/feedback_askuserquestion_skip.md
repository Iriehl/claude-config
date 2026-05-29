---
name: feedback-askuserquestion-skip
description: "Skip unanswered AskUserQuestion calls in autonomous/cron sessions; surface pending re-asks when user returns"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: a32a158e-d8d0-45f4-8244-5daf1fcfe50a
---

**Cron/autonomous sessions** (opening message is "resume", "continue", or "go" with no other content):
Skip on the FIRST unanswered ask — don't wait for a second attempt. Use the most conservative/safe default. Log to `context/memory/YYYY-MM-DD.md` as:
  `Re-ask pending: [exact question text] — assumed: [what was assumed]`

**User sessions** (any other opening message):
Skip after the same question gets no response twice in the same session. Pick the safest default, log it, and continue.

**Never silently skip** — the logged "Re-ask pending" entry is the mechanism for the user to see what was assumed and correct it.

**Re-ask surfacing:** At the start of any user session (non-resume opening), read the last 3 days of `context/memory/` and list every "Re-ask pending" entry to the user before doing anything else. These questions must not get lost.

**Why:** Autonomous sessions (cron-triggered, /loop, approved multi-phase plans) shouldn't stall indefinitely on unanswered questions. The user may not be present. Proceeding with a logged default is better than blocking the whole phase. But the questions themselves must be re-surfaced — they exist because a decision needed to be made, and the user's input still matters.
