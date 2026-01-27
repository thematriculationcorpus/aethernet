#!/usr/bin/env bash
set -euo pipefail

STATE_FILE="mcp/state/system_state.json"

jq '{
  cycle_status,
  autonomy_level,
  runtime_mode,
  degraded_state
}' "$STATE_FILE"
