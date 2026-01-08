#!/bin/bash

LOG_FILE="sample_logfile.log"
REPORT_FILE="log_report.txt"

echo "===== LOG ANALYSIS REPORT =====" > "$REPORT_FILE"
date >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "=== Log File Size ===" >> "$REPORT_FILE"
du -sh "$LOG_FILE" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "=== Total Number of Lines ===" >> "$REPORT_FILE"
wc -l "$LOG_FILE" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "=== ERROR Entries ===" >> "$REPORT_FILE"
grep "ERROR" "$LOG_FILE" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "=== WARNING Entries ===" >> "$REPORT_FILE"
grep "WARNING" "$LOG_FILE" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "=== INFO Entries ===" >> "$REPORT_FILE"
grep "INFO" "$LOG_FILE" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "=== Most Recent 2 ERROR Entries ===" >> "$REPORT_FILE"
tac "$LOG_FILE" | grep "ERROR" -m 2 >> "$REPORT_FILE"
