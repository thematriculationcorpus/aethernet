#!/bin/bash
DIR="BAEs/BAE000/timeline"
DATE=$(date +%Y-%m-%d)
FILE="$DIR/timelog-$DATE.md"

mkdir -p "$DIR"

cat > "$FILE" <<EOF
# 🗓️ Timeline Log — $DATE

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
