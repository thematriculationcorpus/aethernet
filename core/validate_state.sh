#!/usr/bin/env bash
set -euo pipefail

STATE="mcp/state/system_state.json"
SCHEMA="mcp/schemas/system_state.schema.json"

jq . "$STATE" >/dev/null
jq . "$SCHEMA" >/dev/null

# Required keys must exist
for k in cycle_status autonomy_level runtime_mode last_commit degraded_state; do
  jq -e --arg k "$k" 'has($k)' "$STATE" >/dev/null
done

# Enum enforcement (matches schema intent)
cycle_status="$(jq -r '.cycle_status' "$STATE")"
autonomy_level="$(jq -r '.autonomy_level' "$STATE")"
runtime_mode="$(jq -r '.runtime_mode' "$STATE")"

case "$cycle_status" in
  IDEATION|SCAFFOLDING|BUILD|PACKAGE|HOLD) ;;
  *) echo "INVALID cycle_status: $cycle_status" >&2; exit 1 ;;
esac

case "$autonomy_level" in
  NONE|ASSISTED|HUMAN_ONLY) ;;
  *) echo "INVALID autonomy_level: $autonomy_level" >&2; exit 1 ;;
esac

case "$runtime_mode" in
  READ_ONLY|BUILD|FAIL_CLOSED) ;;
  *) echo "INVALID runtime_mode: $runtime_mode" >&2; exit 1 ;;
esac

echo "VALID: state keys + enums"
