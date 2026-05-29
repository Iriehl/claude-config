
#!/bin/bash
# Global Stop: ensure key decisions are logged before closing any session
# Defers to per-client stop hook if one exists. Catches: luna root, agent windows, new clients.

HOOKS_DIR="$(dirname "$0")"
TIMESTAMP_FILE="$HOOKS_DIR/.global-session-timestamp"

# No timestamp = session-start hook didn't fire, skip
if [ ! -f "$TIMESTAMP_FILE" ]; then
  exit 0
fi

SESSION_START=$(cat "$TIMESTAMP_FILE" 2>/dev/null)
NOW=$(date +%s)

# Under 15 minutes — not worth forcing a log
if [ -z "$SESSION_START" ] || [ $((NOW - SESSION_START)) -lt 900 ]; then
  exit 0
fi

# Detect project workspace
WORKSPACE="${CLAUDE_PROJECT_DIR:-$PWD}"

# Walk up from workspace to find client root (has CLAUDE.md or context/memory/)
CLIENT_DIR=""
DIR="$WORKSPACE"
while true; do
  if [ -f "$DIR/CLAUDE.md" ] || [ -d "$DIR/context/memory" ]; then
    CLIENT_DIR="$DIR"
    break
  fi
  PARENT=$(dirname "$DIR")
  if [ "$PARENT" = "$DIR" ]; then
    break
  fi
  DIR="$PARENT"
done

TODAY=$(date '+%Y-%m-%d')

if [ -n "$CLIENT_DIR" ]; then
  # Client workspace — defer to its own stop hook if it has one
  if [ -f "$CLIENT_DIR/.claude/hooks/stop-memory-check.sh" ]; then
    exit 0
  fi

  # New client without its own stop hook — check memory
  MEMORY_FILE="$CLIENT_DIR/context/memory/${TODAY}.md"
  if [ -f "$MEMORY_FILE" ] && [ "$MEMORY_FILE" -nt "$TIMESTAMP_FILE" ]; then
    exit 0
  fi

  CLIENT_NAME=$(basename "$CLIENT_DIR")
  jq -n --arg name "$CLIENT_NAME" --arg today "$TODAY" '{
    decision: "block",
    reason: ("Session ended without logging to context/memory/" + $today + ".md — key decisions will be lost.\n\nLog: plans, strategy calls, findings, anything worth remembering next session.")
  }'
else
  # Non-client workspace (luna root, agent window, etc.)
  GLOBAL_NOTES="$HOME/.claude/session-notes.md"
  if [ -f "$GLOBAL_NOTES" ] && [ "$GLOBAL_NOTES" -nt "$TIMESTAMP_FILE" ]; then
    exit 0
  fi

  jq -n --arg today "$TODAY" '{
    decision: "block",
    reason: ("Session ran 15+ min outside a client workspace — decisions will be lost.\n\nLog anything worth keeping to: ~/.claude/session-notes.md\n\nFormat:\n# " + $today + "\n- [decision or finding here]")
  }'
fi
