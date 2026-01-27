#!/usr/bin/env bash
set -euo pipefail

SCHEMA="mcp/schemas/system_state.schema.json"
STATE="$(./mcp/adapters/local_state.sh)"

echo "$STATE" | jq . >/dev/null
echo "MCP STATE: valid JSON"

# proposal guard
if echo "$STATE" | jq -e '.command? // empty' >/dev/null; then
  echo "ERROR: command field detected"
  exit 1
fi

echo "MCP STATE: proposal-safe"
