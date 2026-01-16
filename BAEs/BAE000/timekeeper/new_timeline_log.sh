#!/bin/bash
# Usage: ./new_timeline_log.sh [optional-logname]
DIR="BAEs/BAE000/timeline"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DATE=$(date +%Y-%m-%d)
DEFAULTFILE="$DIR/timelog-$DATE.md"
FILE="${1:-$DEFAULTFILE}"

mkdir -p "$DIR"

CLOCK_BLOCK=$("$SCRIPT_DIR/aether_timekeeper.sh")

cat > "$FILE" <<EOF
# 🗓️ Timeline Log — $DATE

$CLOCK_BLOCK

**Prepared by:** BAE:000 (Archivist)  
**Scope:** [Describe the period or event]

---

## 📅 Events or Milestones

- [ ] Describe key events, engineering changes, or project checkpoints for $DATE

---

## 🔖 Notes

[Add any contextual notes, lessons, decisions, or links.]

---

**Log auto-generated: $DATE**
EOF

echo "New timeline log created at $FILE"
