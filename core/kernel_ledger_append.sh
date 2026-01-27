#!/usr/bin/env bash
set -euo pipefail

# AETHERNET KERNEL — LEDGER APPEND
# Accepts a receipt. Appends immutably.
# No edits. No deletes. No authority.

receipt="$(cat)"

if [[ -z "$receipt" ]]; then
  echo "USAGE: <receipt_json> | core/kernel_ledger_append.sh" >&2
  exit 2
fi

ledger="continuity/ledger/kernel_ledger.jsonl"
ts="$(date -u +%Y-%m-%dT%H:%M:%SZ)"

# previous hash (or GENESIS)
if [[ -f "$ledger" ]]; then
  prev_hash="$(tail -n 1 "$ledger" | jq -r '.ledger_hash')"
else
  prev_hash="GENESIS"
fi

entry_hash="$(printf "%s%s" "$prev_hash" "$receipt" | sha256sum | awk '{print $1}')"

jq -n \
  --arg timestamp "$ts" \
  --arg prev "$prev_hash" \
  --arg hash "$entry_hash" \
  --argjson receipt "$(printf "%s" "$receipt" | jq .)" \
  '{
    timestamp: $timestamp,
    prev_ledger_hash: $prev,
    ledger_hash: $hash,
    receipt: $receipt
  }' >> "$ledger"

jq -n \
  --arg ok "true" \
  --arg head "$entry_hash" \
  --arg prev "$prev_hash" \
  '{
    ok: true,
    ledger: "kernel",
    head: $head,
    previous: $prev
  }'
