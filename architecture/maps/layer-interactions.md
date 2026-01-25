# Layer Interactions (Structural Map)

This document defines how layers may observe or pass descriptive state.
No execution. No authority transfer. No behavior.

---

## Canonical Interaction Order

1. AETHER
2. AETHERNET
3. MONOCLE
4. AETHIE
5. HABITAT

VAULT, DOOR, and WINDOW are governance domains, not pipeline stages.

---

## Allowed Observations

| Source Layer | Target Layer | Interaction Type | Notes |
|-------------|--------------|------------------|-------|
| AETHER | AETHERNET | Descriptive state | Coherence only |
| AETHERNET | MONOCLE | Signal routing | No interpretation |
| MONOCLE | AETHIE | Perception framing | Lens only |
| AETHIE | HABITAT | HUD / display | Read-only |

---

## Governance Visibility (Non-Pipeline)

| Domain | May Observe | May Be Observed By |
|------|-------------|--------------------|
| VAULT | All (passive) | None downstream |
| DOOR | WINDOW, HABITAT | VAULT |
| WINDOW | HABITAT | DOOR |
| HABITAT | None upstream | WINDOW |

---

## Prohibited Interactions

- No layer may skip an upstream dependency
- No downstream layer may write upstream
- No governance domain may inject behavior
- No lateral layer-to-layer execution

---

## Invariants

- Observation ≠ authority
- Visibility ≠ permission
- Mapping ≠ execution
- Violation triggers fail-closed posture
