
📘 Project 2 – Automated Log Backup by Size (Linux Bash)

🧠 What this project is about

This project is about automating a boring manual task using Bash.

In real systems:
	•	Log files keep growing
	•	Big log files can fill disk space
	•	Manually checking them every day is not practical

So in this project, I learned how to:
	•	Identify large log files
	•	Automatically back them up
	•	Rename them using date & time

⸻

🎯 Problem statement (in simple words)

“If a log file becomes too large, automatically move it to a backup folder with a timestamp.”

No UI.
No user input.
Just automation.

⸻

🛠️ What I actually did (step by step)

1️⃣ Created log files and folders

I created:
	•	A folder for log files
	•	A folder for backups
	•	Dummy log files of different sizes (small & big)

Commands used:

mkdir logs backup
touch logs/app.log

Why this matters:
Real automation needs a controlled environment to test logic.

⸻

2️⃣ Checked log file size

I learned how to check file size from terminal.

Command used:

du -m logs/app.log

What it does:
	•	Shows file size in MB
	•	Helps identify big vs small log files

Key learning:
Computers don’t guess — they measure.

⸻

3️⃣ Used logic to decide (big vs small)

I applied basic programming logic:

If file size is greater than a threshold → take action
Else → do nothing

This is the same logic used in any programming language.

⸻

4️⃣ Automated the process using a Bash script

I wrote a Bash script that:
	•	Loops through all .log files
	•	Checks their size
	•	Moves large files to backup folder
	•	Renames them using date & time

Concepts used:
	•	Variables
	•	Loops
	•	Conditional statements
	•	File operations

⸻

5️⃣ Used timestamps while backing up

Command concept used:

date

Why timestamps matter:
	•	Avoid overwriting old backups
	•	Helps track when backup happened

⸻

📂 Folder structure

project-2/
├── log_backup.sh
├── logs/
│   ├── app.log
│   └── error.log
└── backup/
    └── app_2025-01-01_10-30.log


⸻

🧠 Key learnings from this project
	•	Automation saves time and avoids mistakes
	•	Bash scripts follow the same logic as other languages
	•	Linux commands can be combined to solve real problems
	•	Scripts should decide, not just execute commands

⸻

🚀 Why this project is important

This project shows that I can:
	•	Think in terms of automation
	•	Write scripts for real system problems
	•	Handle files safely in Linux
	•	Apply logic, not just commands

This is a foundation DevOps/Linux Admin skill.

⸻

📌 Note to future me

If this script feels confusing later:
	•	Read the logic first
	•	Understand the condition
	•	Then read the commands

Logic comes before syntax.

	3.	Paste the content above
	4.	Save → Ctrl + O, Enter
	5.	Exit → Ctrl + X
	6.	Verify:

