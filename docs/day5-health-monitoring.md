# Day 5 – Automated Health Monitoring & Self-Healing

## 🎯 Project Goal
To transition from reactive manual fixes to proactive automated monitoring. This phase ensures the Nginx service is not only "running" as a process but is actually responding to user requests.

## 🛠️ Implementation Details

### 1. Health Check Logic (`nginx-health-check.sh`)
I developed a script that performs a deep health check using `curl`. 
- **Validation Type:** HTTP Response Code (checking for `200 OK`).
- **Dependency Management:** Added logic to detect if `curl` is missing and alert the user.
- **Permission Handling:** Standardized logging to the project directory to ensure the script can run without unnecessary root privileges.

### 2. Automation via Cron
To ensure 24/7 reliability, I scheduled the health check to run every 60 seconds.
- **Frequency:** `* * * * *` (Every minute).
- **Execution:** Used absolute paths to ensure the script runs reliably in the restricted Cron environment.

## 🚨 Incident Simulation: Automated Recovery
I tested the automation by stopping the Nginx service manually.
- **Observed Behavior:** Within 60 seconds, the Cron job triggered the health check, detected the service was down, and logged the event.
- **Recovery:** The service was restored to an `active` state by the automation.

## 📈 Key Commands
```bash
# View live health check logs
tail -f ~/projects/self-healing-nginx/nginx-health-check.log

# Check the current crontab configuration
crontab -l

