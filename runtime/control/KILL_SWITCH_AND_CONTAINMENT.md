# KILL_SWITCH_AND_CONTAINMENT — Step 14.C (Owner-Control)

This document defines the owner’s ability to stop runtime activity instantly.
This is structural definition only.

No execution.
No daemon logic.
No automation.

---

## Purpose

Autonomy without a kill-switch is liability.
Containment exists so the system can be shut down faster than it can act.

---

## Canonical Kill-Switch Requirements

A kill-switch must be:
- single-point reachable (one location)
- local-first (works without internet)
- immediate (no "graceful" dependency)
- auditable (records that it was engaged)
- reversible only by the human authority

---

## Kill-Switch Forms (Reserved)

### 1) Local File Flag (Primary)
A file presence check that later runtime components must obey:
- runtime/control/KILL_SWITCH.ENABLED

If present:
- all runtime activity must stop
- no retries
- no alternate execution paths

### 2) Network Isolation (Secondary)
Later implementation may enforce:
- firewall deny rules
- tunnel shutdown
- service disable

Reserved only. Not executed here.

### 3) Process Stop (Tertiary)
Later implementation may enforce:
- systemd stop
- docker stop
- container kill

Reserved only. Not executed here.

---

## Containment States (Reserved)

- NORMAL: kill-switch absent
- CONTAINED: kill-switch present
- LOCKDOWN: contained + network isolated (later)
- QUARANTINE: contained + write denial outside runtime/state (later)

---

## Audit Record (When Implemented)

Any kill-switch engagement must produce an append-only record:
- timestamp
- operator
- trigger method
- scope affected
- confirmation

Location:
- runtime/state/kill-switch.log

---

## Non-Negotiables

- No component may bypass kill-switch.
- No component may "heal" or "restart" itself under containment.
- Under containment, observation may continue only if it is strictly read-only and append-only.

