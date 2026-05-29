#!/usr/bin/env bash
# Status line: ctx bar + session bar, dir bottom-left
# Receives session JSON on stdin

G_CTX='\033[92m'     # bright green    — ctx section
G_SES='\033[32m'     # standard green  — session section
RESET='\033[0m'

BAR_CTX_FILL='\033[92m'   # bright green filled
BAR_CTX_EMPTY='\033[2;92m' # dim bright green empty
BAR_SES_FILL='\033[32m'   # standard green filled
BAR_SES_EMPTY='\033[2;32m' # dim green empty

BAR_WIDTH=20

input=$(cat)

ctx_pct_pre=$(echo "$input"  | jq -r '.context_window.used_percentage // empty'                         2>/dev/null)
context_used=$(echo "$input" | jq -r '.context_window.current_usage.input_tokens // 0'                  2>/dev/null)
context_total=$(echo "$input"| jq -r '.context_window.context_window_size // 0'                         2>/dev/null)
session_pct=$(echo "$input"  | jq -r '.rate_limits.five_hour.used_percentage // empty'                  2>/dev/null)

make_bar() {
  local pct=${1:-0}
  local fill_color=$2
  local empty_color=$3
  local filled=$(( pct * BAR_WIDTH / 100 ))
  [ "$filled" -gt "$BAR_WIDTH" ] && filled=$BAR_WIDTH
  local empty=$(( BAR_WIDTH - filled ))
  printf "${fill_color}"
  for ((i=0; i<filled; i++)); do printf "▓"; done
  printf "${empty_color}"
  for ((i=0; i<empty; i++)); do printf "░"; done
  printf "${RESET}"
}

# Context bar — use pre-calculated percentage if available
if [ -n "$ctx_pct_pre" ] 2>/dev/null; then
  ctx_pct=$(printf "%.0f" "$ctx_pct_pre")
elif [ "${context_total:-0}" -gt 0 ] 2>/dev/null; then
  ctx_pct=$(( context_used * 100 / context_total ))
else
  ctx_pct=0
fi

printf "  ${G_CTX}ctx:${RESET}["
make_bar "$ctx_pct" "$BAR_CTX_FILL" "$BAR_CTX_EMPTY"
printf "] ${G_CTX}%d%%${RESET}" "$ctx_pct"

# Session / rate limit bar
printf "  |  ${G_SES}session:${RESET}["
if [ -n "$session_pct" ] 2>/dev/null; then
  make_bar "$session_pct" "$BAR_SES_FILL" "$BAR_SES_EMPTY"
  printf "] ${G_SES}%d%%${RESET}\n" "$session_pct"
else
  make_bar 0 "$BAR_SES_FILL" "$BAR_SES_EMPTY"
  printf "] ${G_SES}—${RESET}\n"
fi
