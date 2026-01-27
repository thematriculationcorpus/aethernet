# PROMOTION CHECKS — STRUCTURE ONLY

## Required before SCAFFOLDING → BUILD
- mcp/state/system_state.json validates (core/validate_state.sh)
- degraded_state == false
- autonomy_level == HUMAN_ONLY
- runtime_mode == READ_ONLY
- transition_guard returns ALLOW for BUILD

## Notes
- Passing checks does not cause execution.
- Human action remains the only execution surface.
