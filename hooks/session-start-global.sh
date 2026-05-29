
#!/bin/bash
# Global SessionStart: record session start epoch for duration tracking
HOOKS_DIR="$(dirname "$0")"
date +%s > "$HOOKS_DIR/.global-session-timestamp"
exit 0
