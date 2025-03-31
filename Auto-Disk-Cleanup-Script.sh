#!/bin/bash
echo "===== 🧹 Auto Disk Cleanup Script 🧹 ====="

echo -e "\n🔹 Cleaning System Logs..."
rm -rf /var/log/*.log

echo -e "\n🔹 Cleaning Temporary Files..."
rm -rf /tmp/*

echo -e "\n🔹 Cleaning APT Cache..."
apt-get clean -y

echo -e "\n🔹 Checking Free Space After Cleanup:"
df -h
