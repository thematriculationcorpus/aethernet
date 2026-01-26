# OBSERVATION_CONTRACTS — Step 14.A (Read-Only)

This document defines what *runtime observers* may see and record.
It does not authorize action, response, mutation, remediation, or automation.

No execution.
No behavior.
No authority.

---

## Purpose

Observation exists to preserve continuity:
- detect drift
- record state
- prove posture
- provide audit visibility

Observation is not response.
Observation does not change the world.

---

## Allowed Observer Classes

### 1) Watchers (Passive Sensors)
May:
- read filesystem metadata (paths, timestamps, hashes)
- read configuration files marked as public-readable
- read logs produced by allowed sources
- record snapshots to runtime/state (append-only)

May not:
- write anywhere except runtime/state (append-only)
- modify config, code, or permissions
- call network endpoints
- trigger processes

### 2) Monitors (Health & Liveness Sensors)
May:
- read heartbeat artifacts
- read service status *if* later authorized (Step 15+)
- record uptime / failure counts to runtime/state (append-only)

May not:
- restart services
- heal or remediate
- escalate privileges

### 3) Agents (Non-Executive Runtime Roles)
Reserved namespace only.
No agent may execute until Step 15+ explicit gates exist.

---

## Read Scope (Approved Inputs)

Observers may read only:
- runtime/README.md
- runtime/heartbeats/*
- runtime/state/*
- architecture/* (read-only reference)
- root governance docs (read-only reference)

---

## Write Scope (Approved Outputs)

Observers may write only:
- runtime/state/*.log (append-only)
- runtime/state/*.json (append-only snapshots)
- runtime/logs/*.log (append-only)

No overwrites.
No deletions.
No edits-in-place.

---

## Denied Capabilities (Hard Stop)

Observers may not:
- modify anything outside runtime/state and runtime/logs
- make network calls
- run shell commands on behalf of the system
- install packages
- change permissions
- start/stop/restart services
- touch secrets
- touch identity / credentials
- touch Vault/Door/Window authority boundaries

---

## Failure Handling (Fail-Closed)

If an observer cannot read an approved input:
- record a single failure event in runtime/state
- stop (no retries beyond 1)
- do not attempt alternative paths

If an observer attempts a denied action:
- treat as EXECUTION_VIOLATION
- route to EXECUTION_VIOLATION_RESPONSE.md (root)

---

## Audit Fields (Minimum)

Every observer record must include:
- timestamp (UTC preferred)
- observer class (watcher/monitor/agent)
- input scope used
- output path written
- success/failure
- reason (if failure)
