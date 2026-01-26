# LEDGER INVARIANTS — Structural Canon

This document defines invariants for the continuity ledger
within the AETHERNet system.

Structure-only.
No execution. No automation. No mutation.

---

## Ledger Purpose

The ledger exists to:
- Preserve historical continuity
- Record canonical structural state
- Enable reconstruction without interpretation

The ledger is not a database.
The ledger is not a controller.

---

## Invariants

- Ledger entries are append-only
- Ledger entries are immutable once recorded
- Ledger entries may be superseded, never erased
- Ledger entries do NOT trigger action

---

## Authority Constraints

- Ledger entries do NOT confer authority
- Ledger entries do NOT authorize execution
- Ledger entries do NOT resolve conflicts

Human authority is required to interpret ledger state.

---

## Failure Posture

- Missing ledger entries → fail-closed
- Corrupted ledger entries → halt reconstruction
- Ambiguous ledger entries → human review required

Continuity depends on **traceability**, not correctness.
