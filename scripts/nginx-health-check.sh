#!/bin/bash

LOGFILE="/var/log/nginx-health-monitor.log"
DATE=$(date)

echo "[$DATE] Running nginx health check..." >> $LOGFILE

# Check if nginx is responding
curl -s http://localhost > /dev/null

if [ $? -ne 0 ]; then
    echo "[$DATE] Nginx is DOWN. Restarting service." >> $LOGFILE
    sudo systemctl restart nginx
else
    echo "[$DATE] Nginx is healthy." >> $LOGFILE
fi
#!/bin/bash

# Configuration
LOG_FILE="./nginx-health-check.log"  # Changed to project folder to avoid 'sudo'
URL="http://localhost"

# 1. Check if curl is installed
if ! command -v curl &> /dev/null; then
    echo "$(date): ERROR - curl is not installed. Please run 'sudo apt install curl'." | tee -a "$LOG_FILE"
    exit 1
fi

# 2. Perform the health check
if curl -s --head "$URL" | grep "200 OK" > /dev/null; then
    echo "$(date): SUCCESS - Nginx is up and serving traffic." >> "$LOG_FILE"
else
    echo "$(date): WARNING - Nginx is down or unresponsive!" >> "$LOG_FILE"
    # Optional: trigger a restart if it's down
    # sudo systemctl restart nginx
fi
