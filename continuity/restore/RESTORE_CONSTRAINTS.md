# RESTORE CONSTRAINTS — Structural Canon

This document defines constraints governing
system restoration from continuity artifacts.

Structure-only.
No execution. No automation. No self-initiation.

---

## Restoration Definition

Restoration is the act of reconstituting
system structure from valid snapshots and ledger state.

Restoration is NOT:
- Boot
- Execution
- Activation
- Automation

---

## Mandatory Constraints

- Restoration requires explicit human initiation
- Restoration may only rebuild structure
- Restoration MUST NOT resume runtime state
- Restoration MUST NOT infer missing components

---

## Prohibited Actions

During restoration, the system MUST NOT:
- Execute agents
- Resume schedulers
- Enable autonomy
- Activate tools
- Assume intent

---

## Authority & Safety

- Human authority is required at all restore boundaries
- Restore does NOT override governance
- Restore does NOT imply readiness

Restoration ends at **structure visibility**, not operation.
