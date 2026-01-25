# HABITAT

## Role
HABITAT is the execution sandbox layer.
It is the constrained environment where actions occur under strict rules without breaching higher-layer boundaries.

## Position in Architecture
HABITAT sits downstream of WINDOW.
It is the only layer where execution is permitted, but it does not govern itself.

## Inputs
- Approved actions from WINDOW
- Human-initiated commands
- Context-limited operational inputs

## Outputs
- Executed actions
- Observable effects
- State changes contained within HABITAT

## Non-Responsibilities
- No governance
- No policy definition
- No boundary modification
- No authority escalation
- No access to VAULT, DOOR, or MONOCLE
