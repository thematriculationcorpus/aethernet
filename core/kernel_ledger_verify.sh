#!/usr/bin/env bash
set -euo pipefail

ledger="continuity/ledger/kernel_ledger.jsonl"

if [[ ! -f "$ledger" || ! -s "$ledger" ]]; then
  jq -n '{"ok":true,"status":"GENESIS","entries":0}'
  exit 0
fi

prev=""
n=0

while IFS= read -r line; do
  ((n++))
  h="$(printf "%s" "$line" | sha256sum | awk '{print $1}')"

  if [[ -n "$prev" ]]; then
    e="$(printf "%s%s" "$prev" "$line" | sha256sum | awk '{print $1}')"
    if [[ "$e" != "$h" ]]; then
      jq -n --argjson line "$n" \
        '{"ok":false,"status":"BROKEN","first_break":$line}'
      exit 1
    fi
  fi

  prev="$h"
done < "$ledger"

jq -n --argjson entries "$n" --arg head_hash "$prev" \
  '{"ok":true,"status":"VALID","entries":$entries,"head_hash":$head_hash}'

