---
name: reference-chrome-debug
description: Chrome DevTools MCP setup — global bat file at Desktop, launch proactively for any browser task
metadata: 
  node_type: memory
  type: reference
  originSessionId: 705e7048-ebd5-4e2d-b80b-a947bbac1733
---

A dedicated Claude browser can be launched at any time without disturbing the user's regular browsing.

**Global bat file:** `C:\Users\drew\Desktop\launch-claude-browser.bat`

Opens a separate Chrome instance with remote debugging on port 9222. Safe to launch proactively - does not affect the user's normal browser or work.

**How to launch:**
```
cmd /c "C:\Users\drew\Desktop\launch-claude-browser.bat"
```

Then verify with `mcp__chrome-devtools__list_pages`. If port 9222 is already responding, Chrome is already running - skip the launch.

**Rule:** Launch proactively whenever a task needs browser inspection (LP audits, GTM preview, page content extraction, Lighthouse) - no need to ask the user first.

**Applies to:** All client projects in the luna hub (allure, misona, surrey-fire, contrelle).

**Updated:** 2026-05-30 - confirmed global Desktop path replaces per-client bat files.
