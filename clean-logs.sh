#!/bin/bash
# Script to delete logs older than 3 weeks

# 1. Delete traditional log files in /var/log
echo "Cleaning up traditional log files in /var/log..."
find /var/log -type f -name "*.log" -mtime +21 -exec rm -f {} \;

# 2. Delete Docker container logs
echo "Cleaning up Docker container logs..."
find /var/lib/docker/containers/ -type f -name "*.log" -mtime +21 -exec rm -f {} \;

# 3. Vacuum journalctl logs older than 3 weeks
echo "Cleaning up systemd journal logs..."
sudo journalctl --vacuum-time=3weeks

echo "Log cleanup completed."
