📘 Project 3 – System Health Monitoring Script (Linux Bash)

🧠 What this project is about

This project is about monitoring the health of a Linux system using a Bash script.

In real systems:
	•	Disk can get full
	•	RAM can become low
	•	CPU can become overloaded

Admins don’t check these manually every time.
They automate monitoring and logging.

That’s exactly what this project does.

⸻

🎯 Problem statement (simple words)

“Automatically check system health and keep a record with time.”

The script should:
	•	Check disk usage
	•	Check available RAM
	•	Check CPU load
	•	Save the results with date & time in a log file

⸻

🛠️ What I implemented (step by step)

1️⃣ Disk usage monitoring

I monitored only the root filesystem (/) because:
	•	OS lives there
	•	Logs live there
	•	If / is full → system breaks

Command used:

df -h /

What I learned:
	•	df -h shows disk usage
	•	Only the / row matters for system health
	•	Other rows (tmpfs, loop, dev) are noise for monitoring

Logic applied:
	•	If disk usage > 75% → warning
	•	Else → OK

⸻

2️⃣ RAM (memory) monitoring

I checked available RAM, not total or used RAM.

Command used:

free -m

Why available RAM:
	•	Low available RAM causes slow systems
	•	High used RAM is normal in Linux

Logic applied:
	•	If available RAM < 450 MB → warning
	•	Else → OK

⸻

3️⃣ CPU load monitoring

I used CPU load average, which gives a stable picture of CPU usage.

Command used:

uptime

What I learned:
	•	Load average shows how busy the CPU is
	•	It’s better than instant CPU percentage for monitoring

Logic applied:
	•	If load is above a safe limit → warning
	•	Else → OK

⸻

4️⃣ Timestamped logging

Instead of printing output on screen, I logged everything to a file.

Command concept used:

date

Why logging matters:
	•	Monitoring is about history
	•	Logs help identify patterns and issues later
	•	Appending logs avoids data loss

⸻

📂 Folder structure

project-3/
├── system_health_monitor.sh
├── logs/
│   └── system_health.log
└── README.md


⸻

📄 Example log output

Time: 2025-01-01 10:45:12
OK: Disk usage normal (23%)
OK: Available RAM (1520MB)
OK: CPU load (0.42)
-----------------------------

Each run adds a new entry.

⸻

🧠 Key learnings from this project
	•	Monitoring is about signals, not raw data
	•	Bash scripts follow the same logic as other languages
	•	Linux provides all system data via commands
	•	Logging is more useful than printing output

⸻

🚀 Why this project is important

This project shows that I can:
	•	Monitor Linux system health
	•	Apply conditional logic
	•	Write clean Bash scripts
	•	Think like a Linux administrator

This is a core Linux / DevOps foundation skill.

⸻

📌 Note to future me

If this script feels confusing later:
	•	Read the logic first
	•	Understand what is being checked
	•	Then read the commands

Monitoring is logic + consistency.
