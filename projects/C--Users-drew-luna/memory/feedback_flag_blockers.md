---
name: feedback-flag-blockers
description: Flag tool/API failures immediately - do not silently work around them
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 6c6f092c-48ad-4436-ad0a-53d221f92387
---

When a tool, MCP, or API fails, flag it to the user immediately before working around it.

**Why:** Silently routing around a broken MCP (e.g. using Node.js scripts instead) wastes tokens and time. The MCP is often the most efficient path - the user may be able to fix it in 30 seconds.

**How to apply:**
- When an MCP or tool returns an unexpected error: stop, tell the user exactly what's failing and what you're seeing, ask them to check
- Do NOT silently switch to a slower/heavier alternative without saying so first
- Format: "X is failing with [error]. Can you check [specific thing]? I'll wait before proceeding."
- Only fall back to an alternative after the user confirms they can't fix it or says to proceed anyway
