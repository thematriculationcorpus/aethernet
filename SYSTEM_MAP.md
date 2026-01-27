# AETHERNET — SYSTEM MAP (CANONICAL)

Status: LOCKED  
Scope: Repository-wide  
Authority: Human (WSL2 execution)

---

## 1. EXECUTION POSTURE

- WSL2 terminal is the **sole execution surface**
- No automation executes independently
- All actions require explicit human intent

---

## 2. DIRECTORY CLASSIFICATION

### ACTIVE INTERFACE
- `mcp/`

Purpose:
- Read system state
- Emit observations
- Submit proposals (non-binding)

No execution authority.

---

### DORMANT / ASPIRATIONAL
- `runtime/`
- `automation/`
- `containers/`
- `AETHERDOCKER/`

Purpose:
- Future execution surfaces
- Not live
- Not linted
- Presence does not imply readiness

---

### SEALED / GOVERNANCE
- `architecture/`
- `autonomy/`
- `continuity/`
- `perpetuities/`
- `contracts/`
- `core/IDENTITY`
- `BAEs/`

Purpose:
- Define invariants, limits, authority, doctrine
- Read-only
- Govern future automation
- Never treated as executable code

---

### ARCHIVAL / CONTEXT
- `docs/`
- `logs/`
- `README*`
- `SYSTEM.md`
- `HOLD.md`
- `EXECUTION_VIOLATION_RESPONSE.md`
- `CYCLE_COMPLETE.md`
- `PERSONAL_ONBOARDING.md`
- `AETHIEA*`
- `d_ny5u5.md`
- `optAETHERimages.txt`

Purpose:
- Memory and human legibility
- Never executed
- Never linted

---

## 3. CI / TOOLING SCOPE

- CI is scoped to `mcp/**` only
- No recursive repository scans
- Governance and dormant paths are excluded by design

This prevents false errors and execution drift.

---

## 4. MCP INTERFACE AUDIT (PASSED)

Audit Results:
- adapters present: yes
- syntax clean: yes
- schema valid: yes
- proposals read-only: yes
- anomalies: none

MCP is cleared as a **read / propose interface only**.

---

## 5. GOVERNING PRINCIPLES

- Haste makes waste
- Visibility precedes execution
- Boundaries before automation
- Silence is a valid state
- Truth beats speed

---

End of document.

## EVIDENCE
- CI scope commit: 5371f63
- MCP docs commit: a0e2027
- Snapshot commit: d938917
