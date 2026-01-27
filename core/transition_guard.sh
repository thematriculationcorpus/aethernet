#!/usr/bin/env bash
set -euo pipefail

# Transition Guard: emits ALLOW or DENY with reasons.
# NO WRITES. NO STATE CHANGES.

STATE="mcp/state/system_state.json"

target="${1:-}"

if [ -z "$target" ]; then
  echo "USAGE: $0 <TARGET_CYCLE_STATUS>"
  echo "Example: $0 BUILD"
  exit 2
fi

# Read current state
cycle_status="$(jq -r '.cycle_status' "$STATE")"
autonomy_level="$(jq -r '.autonomy_level' "$STATE")"
runtime_mode="$(jq -r '.runtime_mode' "$STATE")"
degraded_state="$(jq -r '.degraded_state' "$STATE")"

deny()  { echo "DENY: $*"; exit 1; }
allow() { echo "ALLOW: $*"; exit 0; }

# Hard fails
[ "$degraded_state" = "false" ] || deny "degraded_state=true (must be false)"
[ "$runtime_mode" != "FAIL_CLOSED" ] || deny "runtime_mode=FAIL_CLOSED"
[ "$autonomy_level" = "HUMAN_ONLY" ] || deny "autonomy_level must be HUMAN_ONLY for any promotion"

# Only allow known targets
case "$target" in
  IDEATION|SCAFFOLDING|BUILD|PACKAGE|HOLD) ;;
  *) deny "unknown target: $target" ;;
esac

# Transition rules (structure-only)
# You can tighten later, but this is sane and safe.
case "$cycle_status:$target" in
  SCAFFOLDING:BUILD)
    [ "$runtime_mode" = "READ_ONLY" ] || deny "must be READ_ONLY before promotion"
    allow "SCAFFOLDING -> BUILD permitted (requires human action outside this guard)"
    ;;
  BUILD:PACKAGE)
    [ "$runtime_mode" = "BUILD" ] || deny "must be in BUILD runtime_mode"
    allow "BUILD -> PACKAGE permitted (human-invoked)"
    ;;
  *:HOLD)
    allow "Any -> HOLD permitted (safety stop)"
    ;;
  IDEATION:SCAFFOLDING|SCAFFOLDING:SCAFFOLDING|BUILD:BUILD|PACKAGE:PACKAGE|HOLD:HOLD)
    allow "No-op state confirmation permitted"
    ;;
  *)
    deny "transition not permitted by current rule-set ($cycle_status -> $target)"
    ;;
esac
