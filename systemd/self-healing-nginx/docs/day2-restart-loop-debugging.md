# Day 2 – Nginx Restart Loop & Debugging

## Failure Injection
- Introduced invalid directive into nginx.conf
- Restart triggered via systemctl

## Observed Behavior
- Nginx failed immediately
- systemd attempted restarts
- Service entered failed state

## Debugging Steps
- Checked systemd logs using journalctl
- Reviewed nginx error.log
- Identified invalid directive causing startup failure

## Resolution
- Removed invalid config line
- Validated config with `nginx -t`
- Restarted service successfully

## Key Takeaways
- Restart policies do not resolve config errors
- Logs must be checked before remediation
- Fast failures indicate startup/config issues

# Day 2 – Nginx Restart Loop Debugging

## Incident Summary
Nginx was terminated manually using SIGKILL to simulate a crash.
The service recovered automatically without manual intervention.

## What Happened
- Nginx master process was killed with `kill -9`
- systemd detected the failure
- systemd restarted nginx automatically
- Service returned to active state

## Commands Used
```bash
ps aux | grep nginx
sudo kill -9 <pid>
systemctl status nginx



