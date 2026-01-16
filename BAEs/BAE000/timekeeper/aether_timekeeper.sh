#!/bin/bash
# aether_timekeeper.sh -- AETHERNet Official Time Keeper / Canonical Time Authority
# Managed by: BAE:000 (Archivist)
EST=$(TZ=America/New_York date "+%Y-%m-%d %I:%M %p EST")
UTC=$(date -u "+%Y-%m-%d %I:%M %p UTC")
echo "Reference Clock (AETHERNet Time Keeper, BAE:000)"
echo "Local (EST): $EST"
echo "UTC: $UTC"
echo ""
echo "Use this output as the canonical anchor for all system, log, and event syncs."
