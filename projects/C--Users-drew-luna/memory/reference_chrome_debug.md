---
name: reference-chrome-debug
description: Chrome DevTools MCP setup — how to enable browser control across all client projects
metadata: 
  node_type: memory
  type: reference
  originSessionId: 705e7048-ebd5-4e2d-b80b-a947bbac1733
---

Chrome DevTools MCP requires Chrome to be launched in remote debugging mode on port 9222.

**How to connect:** Run `launch-claude-browser.bat` (NOT launch-chrome-debug.bat — that is the old name). Located in the client project directory (e.g. `C:\Users\drew\luna\clients\contrelle\launch-claude-browser.bat`).

Once running, `mcp__chrome-devtools__list_pages` will connect and all browser control tools become active.

**Confirmed working:** 2026-05-17 — tested on Contrelle project, bat file connects successfully, multiple tabs visible and controllable.

**Applies to:** All client projects in the luna hub. The bat file approach is the standard way to enable browser control.
