#!/bin/bash
LOG_DIR="BAEs/BAE000/timeline"
ARCHIVE_DIR="$LOG_DIR/archive"
mkdir -p "$ARCHIVE_DIR"

find "$LOG_DIR" -maxdepth 1 -name "timelog-*.md" -type f -mtime +30 -exec mv {} "$ARCHIVE_DIR/" \;

echo "Moved logs older than 30 days to $ARCHIVE_DIR"

