# Execution Eligibility Matrix (Structural)

This document defines **who may ever execute**, **under what conditions**, and **who is permanently barred**.

This is a structural governance file.
No behavior. No automation. No implicit permission.

Execution is **deny-by-default**.

---

## Core Principle

> **Eligibility ≠ Permission**

Eligibility defines whether execution is *theoretically possible*.
Permission is always evaluated later, at runtime, through gates.

If an entity is not eligible here, **no future system change can grant it execution**.

---

## Eligibility Classes

### Class 0 — Permanently Ineligible

These entities **can never execute**, under any circumstance.

| Entity Type | Examples | Reason |
|------------|---------|--------|
| Layers | AETHER, AETHERNET, MONOCLE, AETHIE, VAULT, DOOR, WINDOW | Structural / interpretive only |
| Books | AVOIDANCE, COMPLIANCE, ACCORDANCE | Canonical reference only |
| Maps | All architecture/maps | Descriptive bindings |
| Routing Tables | All architecture/routing | Governance constraints |
| Agents (Non-Executable) | BÆ:000–BÆ:016 | Observational / advisory |

**Invariant:**  
If execution is observed from any Class 0 entity → **system violation** → fail-closed.

---

### Class 1 — Conditionally Eligible (Human-Mediated Only)

Execution may occur **only through a human operator**, never autonomously.

| Entity | Scope | Constraints |
|------|-------|-------------|
| HABITAT | Physical, digital, logistical actions | Human-in-the-loop required |
| Tooling | Shell, editors, infra tools | Manual invocation only |

**Requirements:**
- Human intent
- Conscious action
- External confirmation
- Logged outcome

No AI, agent, or layer may self-trigger execution in this class.

---

### Class 2 — Future-Eligible (Not Active)

Reserved for later lifecycle stages (**13–16 only**).

| Category | Status |
|--------|--------|
| Automation Routines | Disabled |
| Orchestrators | Disabled |
| Scheduled Actions | Disabled |

**Current State:**  
Not eligible. Presence here does **not** imply activation.

Activation requires:
- Lifecycle ≥ Step 13 (System)
- Explicit canon update
- Separate approval artifact

---

## Explicit Prohibitions

- No agent may cross from advisory → executable
- No layer may invoke execution indirectly
- No map or document may imply execution authority
- No “helper,” “assistant,” or “automation” language creates eligibility

---

## Violation Handling

If execution is detected from an ineligible entity:

1. Immediate halt
2. Fail-closed posture
3. Audit required
4. Canon review before resumption

---

## Lifecycle Binding

- Valid from **Step 6 (Scaffolding)** onward
- Enforced through **Step 16 (Perpetuities)**
- May only be *expanded*, never loosened

---

## Canon Status

- Structural
- Read-only
- Governance-critical
- Non-negotiable
