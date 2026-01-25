# Execution Eligibility Matrix
(Structural · Canonical · Non-Interpretive)

This document defines where execution is permitted
and explicitly forbids execution everywhere else.

Execution means:
- performing actions
- changing state
- mutating environment
- triggering effects

Execution does NOT include:
- observation
- display
- reasoning
- signaling
- consolidation

---

## Layer-Level Execution Eligibility

### AETHER
Execution: ❌ PROHIBITED

Notes:
- Consolidation only
- Coherence without action
- No commands, no triggers

---

### AETHERNET
Execution: ❌ PROHIBITED

Notes:
- Transport only
- No awareness
- No mutation of payloads

---

### MONOCLE
Execution: ❌ PROHIBITED

Notes:
- Perception only
- Lens, not engine
- No downstream influence

---

### AETHIE
Execution: ❌ PROHIBITED

Notes:
- Interface only
- Display without control
- No system mutation

---

### VAULT
Execution: ❌ PROHIBITED

Notes:
- Private containment
- Records and doctrine only
- Never acts

---

### DOOR
Execution: ❌ PROHIBITED

Notes:
- Structured exposure
- No actions
- No transactional authority

---

### WINDOW
Execution: ❌ PROHIBITED

Notes:
- Presentation layer
- No backend control
- No side effects

---

### HABITAT
Execution: ✅ PERMITTED (CONSTRAINED)

Conditions:
- Must be explicitly authorized
- Must be scope-bounded
- Must be observable
- Must be reversible where possible
- Must never alter architecture

Notes:
HABITAT is the **only execution surface**.

---

## Agent-Level Execution Eligibility

### All BÆ Agents (000–016)
Execution: ❌ PROHIBITED

Including but not limited to:
- Diagnostics
- Compliance
- Adversarial reasoning
- Inventory
- Probability
- Interpretation
- Accordance
- Avoidance

Agents may:
- observe
- flag
- surface
- describe

Agents may NOT:
- act
- trigger
- decide
- enforce
- modify systems

---

## Human Operator

Execution: ✅ PERMITTED

Constraints:
- Subject to architecture
- Subject to layer boundaries
- Subject to HABITAT containment
- Subject to fail-closed enforcement

The human is the **only authority**.

---

## Absolute Invariants

- Execution occurs **only** in HABITAT.
- No agent executes.
- No layer executes except HABITAT.
- No execution migrates upstream.
- No execution without visibility.
- No silent execution.

Violation of execution boundaries
is a **critical system fault**.

Execution is power.
Power is constrained.
