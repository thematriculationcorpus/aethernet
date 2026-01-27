# DRIFT DETECTION CHECKLIST

Purpose: Identify scope drift before execution.

---

## CHECKS
- CI triggers only on `mcp/**`
- No recursive scans outside `mcp/`
- No new executables added outside adapters
- Governance files remain read-only

---

## SIGNS OF DRIFT
- Lint errors from non-mcp paths
- CI running on doc-only changes
- New scripts marked executable unintentionally

---

## RESPONSE
- Stop work
- Record observation
- Re-scope tooling

End of checklist.
