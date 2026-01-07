#!/bin/bash

REPORT="disk_report.txt"

echo "===== Disk Space Report =====" > "$REPORT"
date >> "$REPORT"
echo "" >> "$REPORT"

echo "=== Total Disk Usage ===" >> "$REPORT"
df -h / | awk 'NR==2 {print "Total:", $2, "Available:", $4}' >> "$REPORT"
echo "" >> "$REPORT"

echo "=== Top 5 Directories ===" >> "$REPORT"
du -sh ../*/ | sort -rh | head -n 5 >> "$REPORT"
echo "" >> "$REPORT"

echo "=== Top 10 Files ===" >> "$REPORT"
find .. -type f -exec du -h {} + | sort -rh | head -n 10 >> "$REPORT"
