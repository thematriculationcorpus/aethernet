# Layer ↔ Agent Observation Boundaries
(Structure-Only · Read-Only)

This document defines observational visibility between
AETHIEA layers and BÆ agents.

Observation does NOT imply:
- authority
- control
- execution
- influence
- escalation

This map governs epistemic visibility only.

---

## AETHER (Consolidation Layer)

### May Observe
- All layers (state-only)
- All BÆ agents (state-only)

### May Be Observed By
- None (upstream anchor)

### Notes
AETHER is the coherence auditor.
It sees without acting.

---

## AETHERNET (Transport Layer)

### May Observe
- None (transport has no awareness)

### May Be Observed By
- AETHER
- MONOCLE

### Notes
AETHERNET carries signal, not meaning.

---

## MONOCLE (Perception Layer)

### May Observe
- AETHERNET signals
- Layer state summaries
- BÆ agent outputs (non-executive)

### May Be Observed By
- AETHER
- AETHIE

### Notes
MONOCLE frames signal without judgment.

---

## AETHIE (Interface Layer)

### May Observe
- MONOCLE outputs
- Layer summaries
- BÆ agent summaries

### May Be Observed By
- Human operator only

### Notes
AETHIE displays; it never controls.

---

## VAULT (Private Core)

### May Observe
- Internal governance agents (BÆ:000, 003, 005)
- Accordance artifacts (read-only)

### May Be Observed By
- AETHER only

### Notes
VAULT is sealed. Visibility is asymmetric.

---

## DOOR (B2B Interface)

### May Observe
- Compliance-aligned agents (BÆ:003, 004, 005)
- Structured outputs from VAULT

### May Be Observed By
- AETHER
- MONOCLE

---

## WINDOW (Public Interface)

### May Observe
- DOOR outputs only

### May Be Observed By
- AETHER
- MONOCLE
- AETHIE

---

## HABITAT (Execution Sandbox)

### May Observe
- WINDOW-approved inputs
- Human-issued commands

### May Be Observed By
- AETHER
- BÆ:005 (freeze/flag only)
- BÆ:002 (diagnostics only)

### Notes
HABITAT executes but does not govern.

---

## Global Constraints

- No layer may observe beyond its declared scope.
- No agent may gain visibility via another layer.
- Observation never propagates authority.
- Any boundary breach triggers fail-closed posture.

This document defines **who may see whom**.
Nothing more.
