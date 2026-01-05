# Total number of files
find . -type f | wc -l
 
# Count specific file types
find . -type f -name "*.txt" | wc -l
find . -type f -name "*.log" | wc -l
find . -type f -name "*.sh"  | wc -l

# Find the largest file
du -ah . | grep -v '/$' | sort -rh | head -n 1

# Files modified today
find . -type f -daystart -mtime 0



# for the future execution for automation we ca say build with the help of AI  to understand how can we upgrade the system 
#!/bin/bash
find . -type f | wc -l
find . -type f -name "*.txt" | wc -l
find . -type f -name "*.log" | wc -l
du -ah . | grep -v '/$' | sort -rh | head -n 1
find . -type f -daystart -mtime 0
