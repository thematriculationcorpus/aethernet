# HEARTBEAT_AND_LIVENESS — Step 14.B (Non-Executing Proof)

This document defines how the system proves "alive" without executing behavior.
A heartbeat is an artifact, not an action loop.

No execution.
No automation.
No self-start.

---

## Definitions

### Heartbeat
A human-created or human-triggered artifact that indicates:
- the repository is intact
- governance remains consistent
- runtime namespace exists
- state is readable

### Liveness
The ability to *produce* a heartbeat artifact *when invoked by a human*.

---

## Heartbeat Artifact Types (Structural)

1) Manual Timestamp Note
- A single-line entry written by the operator.

2) Snapshot Record
- A read-only snapshot summary (hashes, file lists) recorded to runtime/state.

3) Governance Integrity Marker
- A short record confirming execution remains denied by default.

---

## Allowed Locations

Heartbeat artifacts may exist only in:
- runtime/heartbeats/
- runtime/state/

---

## Format (Minimum Fields)

Each heartbeat entry must include:
- timestamp
- operator (human)
- repo HEAD (short hash)
- scope (what was checked)
- result (ok/fail)
- notes (optional)

---

## Denials

Heartbeat does not:
- start processes
- run daemons
- call APIs
- schedule jobs
- remediate failures

If scheduling/autonomy is introduced later, it must be:
- explicitly gated
- kill-switch protected
- auditable
- reversible

That is not this step.
