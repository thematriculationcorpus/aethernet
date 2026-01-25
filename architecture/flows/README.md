# Cross-Layer Flows (Read-Only)

This document defines permitted structural flows between layers.
No execution. No behavior. No automation.

## Allowed Flows

- AETHER → AETHERNET
- AETHERNET → MONOCLE
- MONOCLE → AETHIE
- AETHIE → HABITAT

## Restricted Flows

- VAULT does not receive input from DOOR or WINDOW
- WINDOW cannot write upstream
- HABITAT cannot override MONOCLE
- No lateral layer-to-layer execution

## Flow Rules

- All flows are observational or descriptive
- No layer escalates authority
- Violations trigger fail-closed posture
