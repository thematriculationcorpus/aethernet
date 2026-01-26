# MCP — Local Connector Scaffold (Structure-Only)

This folder reserves the MCP connector interface for AETHERNet.

## Scope (Now)
- Read-only schemas
- Local adapters that emit descriptive state ONLY
- No network listeners
- No background services
- No mutation

## Constraints
- Must remain non-executive unless/until explicit EXECUTION_GATES are opened
- Must honor KILL_SWITCH and fail-closed posture
- Output is observation-only

## Contents
- schemas/  : JSON schemas for read-only system state
- adapters/ : local scripts that output JSON (no writes)
- state/    : local-only state cache (optional, ignored later if needed)
- logs/     : local-only logs
