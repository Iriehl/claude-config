# Autonomous Plan Execution — Reference

Setup date: 2026-05-21
Plan file: `C:\Users\drew\.claude\plans\reflective-growing-zebra.md`

---

## How It Works

Three layers working together:

1. **Cron (watchdog)** — fires "resume" every 30 min. Only kicks off a new session if nothing is already running. Cost of a standdown: ~1-2K tokens (reads one lock file, exits).

2. **CLAUDE.md session-start logic** — every client's CLAUDE.md now handles the full "resume" flow:
   - Checks `.claude/session.lock` — stands down if a session is already active (< 30 min old)
   - Reads `.claude/active-plan` for the current plan filename
   - Loads the plan, finds next `[ ]` phase, starts work immediately
   - Writes the lock before starting, clears it when the phase completes

3. **ScheduleWakeup(270s)** — after each phase completes, the active session reschedules itself 4.5 min later with prompt "resume". This is the primary continuity mechanism — no cold start, no context loss, stays within cache window.

---

## Files Changed

| File | What Changed |
|------|-------------|
| `C:\Users\drew\.claude\settings.json` | Added `"*"` to `permissions.allow` — global all-permissions mode, no tool-use prompts |
| `C:\Users\drew\.claude\projects\C--Users-drew-luna\memory\feedback_askuserquestion_skip.md` | Cron sessions skip on FIRST unanswered ask; re-asks logged as "Re-ask pending:" to memory |
| `clients/surrey-fire/.claude/active-plan` | Points to current active plan filename (`we-mhave-some-snuggly-platypus.md`) |
| `clients/surrey-fire/CLAUDE.md` | Replaced hardcoded plan check with pointer logic + lock + ScheduleWakeup + resilience |
| `clients/allure/CLAUDE.md` | Added session-start block + permissions + resilience |
| `clients/contrelle/CLAUDE.md` | Added session-start block + permissions + resilience |
| `clients/misona/CLAUDE.md` | Added session-start block + permissions + resilience |
| `clients/the-grand-key/CLAUDE.md` | Created from scratch (was missing entirely) |

---

## Maintenance

### When a new plan is created for a client
Update `.claude/active-plan` in that client's folder:
```
echo "new-plan-filename.md" > clients/{client}/.claude/active-plan
```

### When a plan completes
Clear the pointer:
```
echo "" > clients/{client}/.claude/active-plan
```
Or delete the file. The session-start logic handles both.

### Recreating the watchdog cron (after session restart)

The cron is session-only — `durable: true` did not persist to disk in this environment. After any Claude session restart, recreate it with CronCreate:

- **surrey-fire:** `7,37 * * * *` — fires at :07 and :37 each hour
- **allure:** `12,42 * * * *` — offset 5 min
- **contrelle:** `17,47 * * * *` — offset 10 min
- **misona:** `22,52 * * * *` — offset 15 min

Prompt: `resume` | Recurring: true | Durable: true (attempt — may still be session-only)

### True persistent cron (Windows Task Scheduler)
For overnight unattended operation without needing to recreate the cron:
- Create a Windows Scheduled Task that fires every 30 min
- Command: `claude --print "resume"` in each client directory
- This fires independently of Claude desktop sessions

---

## Resilience Logic

Plan phase failure flow:
1. Log to `context/memory/YYYY-MM-DD.md`: `BLOCKED: [phase] — [reason]`
2. Mark phase in plan file as `[!]` (never leave as `[ ]`)
3. Move to next `[ ]` phase
4. If no phases remain, clear `.claude/active-plan`, log "Plan complete"
5. Do NOT retry `[!]` phases — leave for user review

---

## Re-Ask Handling

When autonomous sessions skip a question:
- Logged to `context/memory/YYYY-MM-DD.md` as: `Re-ask pending: [exact question] — assumed: [what was assumed]`

When you open a session (non-resume opening):
- Session-start logic scans last 3 days of memory and lists ALL pending re-asks immediately before doing anything else

Questions are never silently dropped.

---

## Permissions

`"*"` is in `~/.claude/settings.json` allow array — globally unblocked across all projects. Per-client deny lists (Read(.env), Read(secrets/**)) still apply on top.

---

## Cron IDs (this session)

| Client | Cron ID | Schedule | Status |
|--------|---------|----------|--------|
| surrey-fire | cc2fa5fc | 7,37 * * * * | Active (session-only) |
