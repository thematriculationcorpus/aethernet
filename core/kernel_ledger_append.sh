#!/usr/bin/env bash
set -euo pipefail

ledger="continuity/ledger/kernel_ledger.jsonl"

payload="$(cat)"
if [[ -z "$payload" ]]; then
  echo "USAGE: <json> | core/kernel_ledger_append.sh" >&2
  exit 2
fi

# require valid json input
printf "%s" "$payload" | jq -c . >/dev/null

# previous hash = head_hash from verifier (or empty for genesis)
prev="$(./core/kernel_ledger_verify.sh | jq -r '.head_hash // ""')"

line="$(jq -c --arg ts "$(date -u +%Y-%m-%dT%H:%M:%SZ)" --arg prev "$prev" --argjson payload "$(printf "%s" "$payload" | jq -c .)" \
  '{ts:$ts, prev:$prev, payload:$payload}')"

h="$(printf "%s" "$line" | sha256sum | awk '{print $1}')"

# append-only: record line + computed hash
printf "%s\t%s\n" "$h" "$line" >> "$ledger"

jq -n --arg hash "$h" --argjson entry "$(printf "%s" "$line" | jq -c .)" \
  '{ok:true,kernel:"ledger:append",hash:$hash,entry:$entry}'
