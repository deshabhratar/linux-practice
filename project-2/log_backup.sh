#!/bin/bash

LOG_DIR="$HOME/logs"
BACKUP_DIR="$HOME/backup"
SIZE_LIMIT=10   # in MB

for file in "$LOG_DIR"/*.log
do
  size=$(du -m "$file" | cut -f1)

  if [ "$size" -gt "$SIZE_LIMIT" ]
  then
    timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
    filename=$(basename "$file")

    mv "$file" "$BACKUP_DIR/${filename}_$timestamp"
    echo "Moved $filename (size ${size}MB) to backup"
  else
    echo "Skipped $file (size ${size}MB)"
  fi
done
