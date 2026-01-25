# Fail-Closed Triggers

If any condition below is met, the system halts escalation.

## Triggers

- Cross-layer write attempt
- Vault visibility violation
- Book observing non-permitted layer
- Agent attempting execution
- Missing canonical document required by CI

## Outcome

- Observation only
- No retry
- No downgrade
