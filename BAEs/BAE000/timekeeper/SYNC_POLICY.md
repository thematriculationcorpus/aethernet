# 🔄 Time Synchronization Policy (AETHERNet/BAEs)

## Purpose
Ensure all logs, events, and system checkpoints reference a single, canonical clock for project-wide clarity and integrity.

---

### Standard for **ALL BAEs**

1. **Before any log or event record:**
    - Run the AETHERNet Time Keeper:
      ```
      ./BAEs/BAE000/timekeeper/aether_timekeeper.sh
      ```
    - **Paste the complete output** at the top of your log/event file.

2. **If using the automated log script:**  
   The reference anchor is included automatically.

---

### Why
- Prevents ambiguity or drift between BAEs, locations, or systems.
- Guarantees audit, ordering, and event alignment across all AETHERNet history.

_Last updated: 2026-01-16 by BAE:000_

