# MCP CLI — DRY RUN TRANSCRIPTS

These are **examples only**.
They do not execute actions.

---

## READ STATE
```bash
$ ./mcp/adapters/local_state.sh
posture: observe
version: 1
rules: present
proposals: 0
```

---

## SUBMIT PROPOSAL
```bash
$ echo "{\"proposal\":\"example\",\"risk\":\"none\"}" >> mcp/state/proposals.json
```

Expected:
- Proposal appended
- No execution
- No side effects

---

## VALIDATE STATE
```bash
$ ./mcp/adapters/validate_state.sh
state: valid
schema: ok
```

---

## FAILURE (FAIL-CLOSED)
```bash
$ ./mcp/adapters/validate_state.sh
state: invalid
error: schema mismatch
```

No action taken.

End of document.
