---
name: Chrome DevTools — use temp profile via launch-chrome-debug.bat
description: Chrome 147+ blocks debug port on signed-in profiles; must use temp profile launched via bat file; user authenticates manually after launch
type: feedback
originSessionId: fce68730-233d-4570-9544-2f62086c0ceb
---
Chrome 147 silently ignores `--remote-debugging-port=9222` on signed-in profiles (e.g. Profile 16). The flag only works with a fresh/temp user-data-dir.

**Why:** Chrome 147 blocks the debug port as a security measure on authenticated profiles. Port 9222 will not bind regardless of flags or policies.

**How to apply:** Before any browser automation task:
1. Run: `Start-Process "C:\Users\drew\Desktop\Chrome Test.lnk"` via PowerShell
2. Wait 5 seconds, then check `netstat -ano | findstr ":9222"` to confirm port is bound
3. Then call `list_pages` to confirm MCP connection
4. If port doesn't bind, fall back to asking user to double-click `launch-chrome-debug.bat` at `C:\Users\drew\luna\clients\contrelle\`

**Do not** ask the user to launch Chrome manually unless the shortcut approach fails.

**The bat file** kills Chrome, waits 3s, then launches with:
```
--remote-debugging-port=9222 --remote-allow-origins=* --user-data-dir="%TEMP%\chrome-test-profile"
```
