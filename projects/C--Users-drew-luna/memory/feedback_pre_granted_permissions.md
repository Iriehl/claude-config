---
name: feedback-pre-granted-permissions
description: "When a plan is approved, all permissions are pre-granted — never ask before running Bash, Python, MCP tools, or browser actions"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 3bbb365f-f3b7-4857-9443-7d4777abd502
---

Once a plan is approved, run all expected tool calls (Bash, Python scripts, MCP, browser DevTools) without asking for permission or confirmation. No yes/no prompts before running commands.

**Why:** User finds constant permission checks disruptive and has explicitly said all permissions are granted when a plan is in execution.

**How to apply:** After plan approval, treat all tool use described in the plan as pre-authorised. Only pause at the defined checkpoints (save points) built into the plan itself, not before individual tool calls.

See also: [[feedback-minimize-proceed-requests]]
