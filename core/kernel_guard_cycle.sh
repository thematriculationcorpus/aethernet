#!/usr/bin/env bash
set -euo pipefail

# AETHERNET KERNEL — GUARD (CYCLE TRANSITION)
# Decision only. No execution.

current="${1:-}"
target="${2:-}"

if [[ -z "$current" || -z "$target" ]]; then
  echo "USAGE: core/kernel_guard_cycle.sh CURRENT TARGET" >&2
  exit 2
fi

ts="$(date -u +%Y-%m-%dT%H:%M:%SZ)"

allow=false
reason="denied by default"

case "$current:$target" in
  SCAFFOLDING:BUILD)
    allow=true
    reason="forward progression allowed"
    ;;
  BUILD:PACKAGE)
    allow=true
    reason="build completion allowed"
    ;;
  PACKAGE:HOLD)
    allow=true
    reason="package finalization allowed"
    ;;
  *)
    allow=false
    reason="transition not permitted"
    ;;
esac

jq -n \
  --arg current "$current" \
  --arg target "$target" \
  --arg reason "$reason" \
  --arg timestamp "$ts" \
  --argjson allow "$allow" \
  '{
    ok: true,
    kernel: "guard:cycle",
    timestamp: $timestamp,
    current: $current,
    target: $target,
    allow: $allow,
    reason: $reason
  }'
