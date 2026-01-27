# PROMOTE TO BUILD — HUMAN RUNBOOK (NO EXECUTION)

This is a human-run procedure outline.

## Step 1 — Confirm state (read-only)
- Run: `./core/status_report.sh`
- Confirm: SCAFFOLDING / HUMAN_ONLY / READ_ONLY / degraded_state=false

## Step 2 — Guard check (read-only)
- Run: `./core/transition_guard.sh BUILD`
- Must return: ALLOW

## Step 3 — Human decision
- If approved, the human may update state via an explicit edit (future gate tool may exist).
- Until then, state changes remain manual and audited.

End.
