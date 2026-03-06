🛡️ Self-Healing Nginx Infrastructure
Level: SysAdmin / Junior DevOps

Focus: Reliability, Automation, and Incident Response

📖 Project Overview
This project demonstrates the transition from manual system administration to Automation-First Operations. I built a resilient Nginx environment capable of surviving service crashes, configuration corruption, and resource pressure without human intervention.

🛠️ Tech Stack
Linux: Ubuntu Server 22.04 LTS

Web Server: Nginx

Init System: systemd (Custom overrides & Watchdogs)

Automation: Bash Scripting & Cron Jobs

Version Control: Git & GitHub

🚀 Key Features & Milestones
1. Advanced Service Supervision
Implemented systemd overrides to enforce specific restart policies (on-failure).

Configured a 5-second RestartSec window to prevent CPU-hogging restart loops during cascading failures.

2. Automated Health Monitoring
Developed a custom Bash health-check engine that validates service availability via HTTP status codes rather than just process presence.

Automated monitoring using Cron, ensuring the system is audited every 60 seconds.

3. Incident Logging & Observability
Created structured logging for health events to allow for post-mortem analysis.

Standardized log storage outside of restricted system directories to allow for easier integration with monitoring tools.

4. Failure Simulations (The "Chaos" Tests)
Process Kill: Simulated hard crashes using SIGKILL.

Config Corruption: Verified that the system identifies and fails safely during syntax errors.

Disk Pressure: Simulated storage exhaustion to observe service behavior under resource constraints.

📂 Project Structure
Plaintext
self-healing-nginx/
├── scripts/
│   └── nginx-health-check.sh    # Automated monitoring logic
├── systemd/
│   └── nginx-override.conf      # Custom reliability policies
├── docs/
│   ├── day1-baseline.md         # Setup and baseline verification
│   ├── day2-recovery.md         # Crash recovery evidence
│   ├── day3-config-recovery.md  # Debugging log analysis
│   └── day4-automation.md       # Cron and storage pressure results
└── README.md                    # Project documentation
