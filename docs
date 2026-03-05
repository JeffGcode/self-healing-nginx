# Day 1 - Nginx Baseline & Recovery Test

## Service Configuration
- Nginx managed by systemd
- Restart policy enabled via override
- Restart delay set to 5 seconds

## Failure Test - Proccess Kill

- Action: Sent SIGKILL to Nginx master proccess
- Command used: `sudo kill -9 <PID>`
- Expected behavior: systemd restarts service after delay
- Result: Service restarted successfully after ~5 seconds
- Validation: 
  - `systemctl status nginx` showed active
  -New PID assigned

## Takeaways
 -systemd correctly supervises Nginx
 -Auto-restart works during hard failures
 -Confirms seflt-healing behavior
