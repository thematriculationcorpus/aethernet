#!/usr/bin/env bash
set -euo pipefail

# AETHERNET KERNEL — CHAIN (ECHO -> HASH)
# Composition only. No new logic.

msg="${1:-}"

if [[ -z "$msg" ]]; then
  echo "USAGE: core/kernel_chain_echo_hash.sh \"message\"" >&2
  exit 2
fi

tmpdir="$(mktemp -d -t aethernet-kernel-chain.XXXXXX)"
cleanup(){ rm -rf "$tmpdir"; }
trap cleanup EXIT

echo_json="$(./core/kernel_echo.sh "$msg")"
hash_json="$(./core/kernel_hash.sh "$msg")"
ts="$(date -u +%Y-%m-%dT%H:%M:%SZ)"

jq -n \
  --argjson echo "$echo_json" \
  --argjson hash "$hash_json" \
  --arg timestamp "$ts" \
  '{
    ok: true,
    kernel: "chain:echo->hash",
    timestamp: $timestamp,
    echo: $echo,
    hash: $hash
  }'
