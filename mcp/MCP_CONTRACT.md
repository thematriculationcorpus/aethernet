# MCP CONTRACT — READ / PROPOSE ONLY

Status: LOCKED  
Authority: Human (WSL2 execution)  
Scope: mcp/

---

## PURPOSE
Define the immutable contract for the MCP interface. This document governs how tools may *interact* with MCP, not how MCP executes actions.

---

## ALLOWED
- Read system state
- Emit observations
- Submit proposals (non-binding)

---

## DENIED (ABSOLUTE)
- Execution of commands
- Dispatch of actions
- Side effects (filesystem, network, process)
- Authority escalation
- Background operation

---

## INPUTS
- Files under `mcp/state/`
- Schemas under `mcp/schemas/`

---

## OUTPUTS
- Observations (stdout only)
- Proposal entries written to `mcp/state/proposals.json`

---

## GUARANTEES
- Fail-closed by default
- Human approval required for any action
- Schema validation precedes acceptance
- No automation without explicit promotion

---

## NON-GOALS
- Task execution
- Scheduling
- Autonomy
- Orchestration

End of contract.
