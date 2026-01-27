# MCP CONTRACT — READ / PROPOSE ONLY

Status: LOCKED  
Authority: Human (WSL2 execution)  
Scope: mcp/

---

## PURPOSE
Define the immutable contract for the MCP interface.  
Interaction only — never execution.

---

## ALLOWED
- Read system state
- Emit observations
- Submit proposals (non-binding)

---

## DENIED (ABSOLUTE)
- Command execution
- Side effects
- Authority escalation
- Background operation

End of contract.
