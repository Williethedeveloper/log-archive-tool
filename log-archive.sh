#!/bin/bash

# Check if the user provided a directory
if [ -z "$1" ]; then
    echo "❌ Error: Please provide a log directory."
    echo "Usage: ./log-archive.sh /path/to/logs"
    exit 1
fi

# Variables
LOG_DIR="$1"
ARCHIVE_DIR="$HOME/log-archives"  # Stores archived logs
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_FILE="$ARCHIVE_DIR/logs_archive_$TIMESTAMP.tar.gz"
LOG_FILE="$ARCHIVE_DIR/archive.log"

# Create archive directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Compress logs
tar -czf "$ARCHIVE_FILE" "$LOG_DIR" 2>/dev/null

# Check if compression was successful
if [ $? -eq 0 ]; then
    echo "✅ Logs archived successfully: $ARCHIVE_FILE"
    echo "$TIMESTAMP - Archived $LOG_DIR to $ARCHIVE_FILE" >> "$LOG_FILE"
else
    echo "❌ Error: Failed to archive logs."
fi
