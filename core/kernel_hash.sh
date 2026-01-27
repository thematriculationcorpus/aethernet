#!/usr/bin/env bash
set -euo pipefail

# AETHERNET KERNEL — HASH (DETERMINISTIC)
# One input: argv[1] (string)
# One output: JSON on stdout
# Side effects: temp-only, auto-clean
# No network. No state mutation.

msg="${1:-}"

if [[ -z "$msg" ]]; then
  echo "USAGE: core/kernel_hash.sh \"message\"" >&2
  exit 2
fi

case "$msg" in
  *$'\n'*|*$'\r'* )
    echo "ERROR: message must be single-line" >&2
    exit 3
    ;;
esac

tmpdir="$(mktemp -d -t aethernet-kernel-hash.XXXXXX)"
cleanup(){ rm -rf "$tmpdir"; }
trap cleanup EXIT

printf '%s' "$msg" > "$tmpdir/input.txt"

hash="$(sha256sum "$tmpdir/input.txt" | awk '{print $1}')"
ts="$(date -u +%Y-%m-%dT%H:%M:%SZ)"

jq -n \
  --arg ok "true" \
  --arg kernel "hash" \
  --arg timestamp "$ts" \
  --arg message "$msg" \
  --arg sha256 "$hash" \
  '{ok: ($ok=="true"), kernel: $kernel, timestamp: $timestamp, message: $message, sha256: $sha256}'
