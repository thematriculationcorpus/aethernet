# DRIFT SENTINEL — DEFINITION ONLY

Status: LOCKED  
Scope: Repository-wide  
Authority: Human (WSL2)

---

## PURPOSE
Define what constitutes **system drift** without introducing monitoring,
automation, or enforcement.

This document is descriptive only.

---

## DRIFT DEFINITION

Drift occurs when **behavior, scope, or authority** changes
without explicit human approval.

---

## DRIFT SIGNALS

### STRUCTURAL
- New executable files outside `mcp/adapters/`
- CI scope expands beyond `mcp/**`
- Runtime directories referenced as active

### AUTHORITY
- MCP granted execution capability
- Background or scheduled behavior introduced
- State mutation without proposal record

### GOVERNANCE
- Contracts modified without snapshot
- Invariants altered without promotion gate
- Silent changes to authority limits

---

## REQUIRED RESPONSE (HUMAN)
- Stop
- Inspect diff
- Compare against SNAPSHOT
- Decide: revert, document, or promote

---

## NON-ACTIONS
- No auto-fix
- No alerts
- No enforcement

Observation precedes action.

End of document.
