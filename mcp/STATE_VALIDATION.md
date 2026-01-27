# MCP STATE VALIDATION — USAGE

This document describes how state is validated.
It introduces **no new execution paths**.

---

## SCHEMA
- File: `mcp/schemas/system_state.schema.json`
- Version: pinned by repository commit hash
- Changes require explicit human review

---

## VALIDATION
- Syntax check only
- No mutation of state
- No side effects

Example (human-invoked):

```bash
jq . mcp/schemas/system_state.schema.json >/dev/null
```

---

## PROPOSALS
- Stored in `mcp/state/proposals.json`
- Data-only
- Reviewed by human before any promotion

End of document.
