#!/bin/bash
echo "===== SYSTEM HEALTH CHECK ====="

# CPU Usage
echo "🔹 CPU Load:"
top -b -n1 | grep "Cpu(s)"

# RAM Usage
echo "🔹 RAM Usage:"
free -h

# Disk Usage
echo "🔹 Disk Usage:"
df -h

# Active Processes
echo "🔹 Top 5 Memory Consuming Processes:"
ps aux --sort=-%mem | head -6

# Uptime
echo "🔹 System Uptime:"
uptime
