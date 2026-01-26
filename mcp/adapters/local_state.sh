#!/usr/bin/env bash
set -euo pipefail

# move to repo root even if invoked from elsewhere
REPO_ROOT="$(cd "$(dirname -- "$0")/../.." && pwd)"
cd "$REPO_ROOT"

LAST_COMMIT="$(git rev-parse --short HEAD 2>/dev/null || echo "")"

cat <<JSON
{
  "cycle_status": "0–16 COMPLETE",
  "autonomy_level": "SCOPED",
  "runtime_mode": "HEADLESS",
  "last_commit": "$LAST_COMMIT",
  "degraded_state": false
}
JSON
