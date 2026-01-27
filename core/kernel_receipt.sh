#!/usr/bin/env bash
set -euo pipefail

# AETHERNET KERNEL — RECEIPT
# Proof that a kernel output existed at a time.
# Does not grant authority. Does not execute.

input="$(cat)"

if [[ -z "$input" ]]; then
  echo "USAGE: <kernel_json> | core/kernel_receipt.sh" >&2
  exit 2
fi

ts="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
hash="$(printf "%s" "$input" | sha256sum | awk '{print $1}')"

jq -n \
  --arg timestamp "$ts" \
  --arg sha256 "$hash" \
  --argjson payload "$(printf "%s" "$input" | jq .)" \
  '{
    ok: true,
    kernel: "receipt",
    timestamp: $timestamp,
    sha256: $sha256,
    payload: $payload
  }'
