#!/bin/bash
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$disk_usage" -gt 75 ]; then
  disk_status="WARNING: Disk usage above 75% ($disk_usage%)"
else
  disk_status="OK: Disk usage normal ($disk_usage%)"
fi
available_ram=$(free -m | awk 'NR==2 {print $7}')

if [ "$available_ram" -lt 450 ]; then
  ram_status="WARNING: Low available RAM (${available_ram}MB)"
else
  ram_status="OK: Available RAM (${available_ram}MB)"
fi
cpu_load=$(uptime | awk -F'load average:' '{print $2}' | cut -d',' -f1 | xargs)
cpu_load_int=${cpu_load%.*}

if [ "$cpu_load_int" -gt 2 ]; then
  cpu_status="WARNING: High CPU load ($cpu_load)"
else
  cpu_status="OK: CPU load ($cpu_load)"
fi
timestamp=$(date "+%Y-%m-%d %H:%M:%S")

{
  echo "Time: $timestamp"
  echo "$disk_status"
  echo "$ram_status"
  echo "$cpu_status"
  echo "-----------------------------"
} >> logs/system_health.log
