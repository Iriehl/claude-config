---
name: feedback-session-efficiency
description: "Rules for keeping Claude Code sessions lean - session batching, no planning meta-sessions, multi-skill sessions"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: f7aaf108-752b-4143-8b12-6338a0124ed4
---

Never run one skill per session. Chain related skills in one session with /compact between them.

**Why:** Session history showed 20+ sessions in a single day for work that should have been 4-6. Every cold start costs 3-5K tokens in context loading before any useful work happens.

**How to apply:**
- Run all 4 clients' gads-context in ONE hub session, then /compact and continue
- Chain audits (keyword + search-term + placement) in one session per client with /compact between
- Planning ("what should I work on?") belongs at the top of a working session, not its own session
- Separate sessions only for genuinely unrelated tasks

See [[project-weekly-workflow]] for the batch refresh script approach.
