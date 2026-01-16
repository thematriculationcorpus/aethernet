# 🕰️ Authority & Enforcement Policy — AETHERNet Time Keeper

## **Authority**
- Only **BAE:000** may update or reset AETHERNet’s Time Keeper reference anchor.
- Other BAEs may request a new anchor only via formal protocol override, recorded and signed.

## **Update Procedures**
- For routine logs or events:  
  Always use the current output of `aether_timekeeper.sh`.  
  **Never** modify the script or anchor except by policy.

- For system epoch, fork, or disaster:**  
  BAE:000 coordinates and publishes the new anchor block to all BAEs.

## **Output Format**
- The output format must never change for appearance’s sake.  
- All parsing and verifications rely on strict output stability.

## **Compliance**
- Logs or audits referencing altered or hand-modified anchors are invalid for system continuity.

_Last ratified: 2026-01-16 by BAE:000_
