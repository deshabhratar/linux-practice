# Disk Space Explainer (Linux)

## What is this project?
This project analyzes disk usage on a Linux system to identify
where storage is being consumed.

## What problem does it solve?
- Helps understand why disk space is filling up
- Identifies large directories and files
- Separates directory usage from file usage clearly

## What does it check?
- Total disk size and available space
- Top 5 directories consuming space
- Top 10 files consuming space

## Tools & commands used
df, du, find, sort, head, awk

## Output
The script generates a disk usage report when executed.


