# DEGRADED MODE MATRIX — Structural Canon

This document defines permitted system posture
when one or more components enter a degraded state.

No execution.
No automation.
No remediation logic.

---

## Degraded States

| State ID | Trigger Condition | Allowed Activity | Prohibited Activity |
|--------|-------------------|------------------|---------------------|
| D0 | No degradation | Observation only | Execution |
| D1 | Partial signal loss | Read-only mapping | Decision-making |
| D2 | Layer isolation | State preservation | Cross-layer writes |
| D3 | Autonomy fault | Human-only control | Autonomous action |
| D4 | Unknown integrity | Full halt | All runtime activity |

---

## Escalation Rules

- Degradation may only escalate, never downgrade automatically
- Recovery requires explicit human authorization
- Unknown states default to highest restriction

---

## Cross-Reference Constraints

- HUMAN_OVERRIDE_PRIORITY.md supersedes all states
- EXECUTION_GATES.md remain closed in all degraded modes
- Runtime may observe but not act

---

## Failure Rule

If degraded state cannot be classified,
system enters **D4 — Full Halt**.
