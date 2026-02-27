# Day 4 – Disk Full Incident (Silent Production Failure)

## 📌 Objective
Simulate a production incident where the disk becomes full, causing NGINX to silently fail.  
Diagnose the issue using Linux tools and restore service safely.

---

## 🧨 Incident Simulation

### Step 1 – Fill the Disk Intentionally

Simulate disk exhaustion:

```bash
sudo fallocate -l 1G /var/log/bigfile.l
---

# ✅ Step 4 — Save and Exit
