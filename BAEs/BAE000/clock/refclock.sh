#!/bin/bash
EST=$(TZ=America/New_York date "+%Y-%m-%d %I:%M %p EST")
UTC=$(date -u "+%Y-%m-%d %I:%M %p UTC")
echo "Reference Clock (BAE:000)"
echo "Local (EST): $EST"
echo "UTC: $UTC"
echo ""
echo "Use this output as the anchor for all system and log syncs."
