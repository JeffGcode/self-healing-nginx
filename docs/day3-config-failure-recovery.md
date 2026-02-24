# Day 3 – Nginx Configuration Failure & Recovery

## Incident Summary
A misconfigured nginx directive caused the service to fail on restart.

## What Broke
- Invalid directive added to nginx.conf
- systemd could not start nginx
- Service entered failed state

## Detection
- systemctl status nginx showed failure
- nginx -t reported invalid directive
- error.log confirmed syntax error

## Recovery Steps
- Restored last known good configuration
- Validated config before restart
- Restarted service successfully

## Commands Used
```bash
sudo nginx -t
systemctl status nginx
sudo tail /var/log/nginx/error.log
sudo cp nginx.conf.bak nginx.conf

