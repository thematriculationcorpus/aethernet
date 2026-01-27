#!/usr/bin/env bash
set -euo pipefail

# AETHERNET KERNEL — ECHO (MINIMAL EXECUTION PROOF)
# One input:  argv[1] (string)
# One output: JSON on stdout
# Side effects: writes only to a temp dir, then cleans up
# No network. No state mutation.

msg="${1:-}"

if [[ -z "$msg" ]]; then
  echo "USAGE: core/kernel_echo.sh \"message\"" >&2
  exit 2
fi

# Hard stops (keep it boring, non-capable)
case "$msg" in
  *$'\n'*|*$'\r'* )
    echo "ERROR: message must be single-line" >&2
    exit 3
    ;;
esac

tmpdir="$(mktemp -d -t aethernet-kernel-echo.XXXXXX)"
cleanup(){ rm -rf "$tmpdir"; }
trap cleanup EXIT

# Local-only proof-of-write (temp only)
printf '%s' "$msg" > "$tmpdir/input.txt"

# Stable timestamp (UTC) for observability, not authority
ts="$(date -u +%Y-%m-%dT%H:%M:%SZ)"

# Output: single JSON object
jq -n \
  --arg ok "true" \
  --arg kernel "echo" \
  --arg timestamp "$ts" \
  --arg message "$msg" \
  '{ok: ($ok=="true"), kernel: $kernel, timestamp: $timestamp, message: $message}'
