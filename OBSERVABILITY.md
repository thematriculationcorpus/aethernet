# OBSERVABILITY — READ ONLY

Purpose: Clarify what MCP may observe vs. ignore.

---

## MAY OBSERVE
- System posture
- Schema validity
- Proposal counts
- Drift signals (non-executing)

---

## MUST IGNORE
- Commands
- Schedules
- Network calls
- Files outside mcp/

---

## EXAMPLES
Expected:
- New proposal added
- Schema version unchanged

Anomalous:
- Executable added outside adapters
- CI triggered by doc-only change

Response:
- Record
- Stop
- Human review

End of document.
