# PROMOTION GATE — HUMAN-ONLY

Status: NOT ACTIVE
Authority: Human (WSL2 execution)
Scope: Repository-wide

---

## INTENT
Define the conditions under which MCP may be promoted beyond read/propose.

---

## REQUIRED SIGNALS (ALL)
- MCP audit passed and documented
- System map locked
- CI scoped and green
- No unresolved drift

---

## HUMAN SIGN-OFF
Promotion requires:
- Named human approver
- Timestamp
- Reason for promotion

---

## ROLLBACK CONDITIONS
Immediate rollback if:
- Any side effect observed
- Any execution without approval
- Any scope violation

---

## NOT-YET CRITERIA
Promotion is forbidden if:
- Automation exists without kill-switch
- Logs are required for function
- Any background process runs

End of document.
