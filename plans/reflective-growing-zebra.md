# Autonomous Plan Execution — Multi-Client Setup

## Context

The user needs Claude Code to work through active plans across all client folders autonomously while away. An hourly cron exists but was non-durable (lost when the session ended — CronList currently returns empty). Key gaps to close: no global all-permissions mode, hardcoded plan filename in surrey-fire CLAUDE.md (breaks when plans rotate), other clients missing plan-resumption logic, skip-question rule needs tightening, and skipped questions must be surfaced when user returns.

The cron is a **watchdog only** — its job is to restart a session if nothing is running, not to be a metronome. An active session self-reschedules using ScheduleWakeup. A session that detects the lock and stands down costs ~1-2K tokens (reading one file) — effectively free.

---

## Changes

### 1. Global Permissions — No Prompts
**File:** `C:\Users\drew\.claude\settings.json`

Add `"*"` to the top of the `permissions.allow` array. Done. No more tool-use prompts globally across all projects. The per-client deny list (Read(.env), Read(secrets/**)) still applies on top — credentials stay protected.

```json
"permissions": {
  "allow": ["*", ...existing entries]
}
```

---

### 2. Active Plan Pointer File (per client)
**New file:** `C:\Users\drew\luna\clients\{client}\.claude\active-plan`

Single line containing just the plan filename (no path). Example:
```
we-mhave-some-snuggly-platypus.md
```

When a new plan is created for a client, this file is updated. When a plan completes, the file is cleared. Create for surrey-fire immediately (pointing to the current plan). Others created when their plans exist.

---

### 3. CLAUDE.md — Plan Resumption Block (all clients)

**Update:** `C:\Users\drew\luna\clients\surrey-fire\CLAUDE.md`
**Add same block to:** allure, contrelle, misona, the-grand-key CLAUDE.md

Replace the hardcoded plan filename check with a pointer-based approach. Add the Re-ask surfacing logic. Full block:

```markdown
## Session Start — Active Plan Check

**Step 1 — Surface any pending re-asks first (user sessions only)**
Read context/memory/ for the last 3 days. If any entry contains "Re-ask pending:", 
list every pending question to the user immediately before doing anything else.
(Skip this step if opening message is "resume"/"continue"/"go" — cron session, user not present.)

**Step 2 — Check for active plan**
Read .claude/active-plan. If non-empty:
  1. Load that plan file from C:\Users\drew\.claude\plans\
  2. Find the next incomplete phase (marked [ ])
  3. Read context/memory/ last 3 days for recent work log
  4. Tell the user where work left off and what's next
  5. If opening message is empty or "resume"/"continue"/"go" — start immediately, no questions

**Step 3 — Acquire session lock**
Before starting any plan work, write to .claude/session.lock:
  {"pid": <process_id>, "started": "<ISO timestamp>", "phase": "<phase name>"}
Release (delete) the lock when the phase completes or on session end.

**Step 4 — Self-reschedule between phases**
After completing each phase, call ScheduleWakeup with delaySeconds: 270 (4.5 min, 
stays within cache window) and prompt: "resume". This continues work without a cold start.
```

---

### 4. Skip-Question Rule — Tighten for Autonomous Mode
**File:** `C:\Users\drew\.claude\projects\C--Users-drew-luna\memory\feedback_askuserquestion_skip.md`

Add cron-mode clause:

```
**Cron/autonomous sessions** (opening message is "resume"/"continue"/"go"):
Skip on the FIRST unanswered ask — don't wait for a second attempt.
Use the most conservative/safe default.
Log to context/memory/YYYY-MM-DD.md as:
  "Re-ask pending: [exact question text] — assumed: [what was assumed]"

**User sessions** (any other opening message):
Keep existing rule: skip after second unanswered ask in the same session.

Never silently skip. The logged entry is the mechanism for the user to see 
what was assumed and correct it next time they open a session.
```

---

### 5. Durable Cron — Watchdog Role Only
**Action:** Run CronCreate once per active client from within each client's working directory.

**Design:**
- The cron is a watchdog: fires, checks `.claude/session.lock`, stands down if a session is active
- Active sessions self-reschedule with ScheduleWakeup — no need for aggressive cron frequency
- Standdown cost: ~1-2K tokens (reading one file), effectively free

**Settings:**
- Schedule: `*/30 * * * *` (every 30 min — watchdog only)
- Prompt: `resume`
- durable: `true`

**Watchdog check logic** (in the cron-triggered "resume" session):
```
On "resume" opening:
  1. Check .claude/session.lock
  2. If lock exists and timestamp < 30 min ago — stand down, log "Watchdog: active session detected, standing down"
  3. If lock missing or stale (> 30 min old) — acquire lock and begin plan work
```

**Stagger across clients to avoid simultaneous API load:**
- surrey-fire: `*/30 * * * *`
- allure: `5,35 * * * *`
- contrelle: `10,40 * * * *`
- misona: `15,45 * * * *`

---

### 6. Retry / Resilience Logic
Add to autonomous section of each client CLAUDE.md:

```
If a plan phase fails (API error, script error, missing data):
  - Log to context/memory/YYYY-MM-DD.md: "BLOCKED: [phase] — [reason]"
  - Mark the phase in the plan file as [!] (do NOT leave as [ ])
  - Move to the next [ ] phase if one exists
  - Do not retry the same [!] phase — leave it for user review
  - If no [ ] phases remain, clear .claude/active-plan and log "Plan complete"
```

---

## Execution Order

1. Edit `C:\Users\drew\.claude\settings.json` — add `"*"` to permissions.allow
2. Update `feedback_askuserquestion_skip.md` — add cron-mode first-skip clause
3. Create `surrey-fire/.claude/active-plan` with `we-mhave-some-snuggly-platypus.md`
4. Update `surrey-fire/CLAUDE.md` — pointer logic + re-ask surfacing + lock + ScheduleWakeup
5. Update allure, contrelle, misona, the-grand-key CLAUDE.md — add same plan block
6. Run CronCreate for surrey-fire (durable, 30 min, prompt "resume") from surrey-fire directory
7. Verify: send "resume" in surrey-fire — confirm plan is picked up and re-asks are surfaced

---

## Files Modified

| File | Change |
|------|--------|
| `C:\Users\drew\.claude\settings.json` | Add `"*"` to permissions.allow |
| `C:\Users\drew\.claude\projects\C--Users-drew-luna\memory\feedback_askuserquestion_skip.md` | Add cron-mode first-skip clause |
| `C:\Users\drew\luna\clients\surrey-fire\.claude\active-plan` | New — current plan filename |
| `C:\Users\drew\luna\clients\surrey-fire\CLAUDE.md` | Pointer + re-ask + lock + ScheduleWakeup |
| `C:\Users\drew\luna\clients\allure\CLAUDE.md` | Add plan resumption block |
| `C:\Users\drew\luna\clients\contrelle\CLAUDE.md` | Add plan resumption block |
| `C:\Users\drew\luna\clients\misona\CLAUDE.md` | Add plan resumption block |
| `C:\Users\drew\luna\clients\the-grand-key\CLAUDE.md` | Add plan resumption block |

---

## Verification

1. Settings change: new session → confirm no tool-use prompts appear for any action
2. "resume" in surrey-fire → confirms CLAUDE.md picks up correct plan phase, acquires lock
3. Second "resume" while first is running → confirms watchdog stands down (checks lock)
4. Skip a question in autonomous mode → confirm "Re-ask pending" appears in memory log
5. User session after autonomous run → confirm pending re-asks are surfaced first thing
6. CronList after session restart → confirms cron persisted (durable: true)
