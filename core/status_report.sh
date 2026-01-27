#!/usr/bin/env bash
set -euo pipefail

STATE="mcp/state/system_state.json"

cycle_status="$(jq -r '.cycle_status' "$STATE")"
autonomy_level="$(jq -r '.autonomy_level' "$STATE")"
runtime_mode="$(jq -r '.runtime_mode' "$STATE")"
last_commit="$(jq -r '.last_commit' "$STATE")"
degraded_state="$(jq -r '.degraded_state' "$STATE")"

echo "AETHERNET STATUS"
echo "----------------"
echo "cycle_status   : $cycle_status"
echo "autonomy_level : $autonomy_level"
echo "runtime_mode   : $runtime_mode"
echo "degraded_state : $degraded_state"
echo "last_commit    : $last_commit"
echo
echo "GUARD QUICKCHECKS"
echo "-----------------"
./core/transition_guard.sh HOLD >/dev/null 2>&1 && echo "guard: HOLD  -> ALLOW" || echo "guard: HOLD  -> DENY"
./core/transition_guard.sh BUILD >/dev/null 2>&1 && echo "guard: BUILD  -> ALLOW" || echo "guard: BUILD  -> DENY"
./core/transition_guard.sh PACKAGE >/dev/null 2>&1 && echo "guard: PACKAGE-> ALLOW" || echo "guard: PACKAGE-> DENY"
