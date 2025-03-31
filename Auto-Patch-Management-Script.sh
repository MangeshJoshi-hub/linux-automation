#!/bin/bash
echo "===== 🛠️ Auto Patch Management Script 🛠️ ====="

echo -e "\n🔹 Updating All Packages..."
apt update -y && apt upgrade -y

echo -e "\n🔹 Checking For Kernel Updates..."
apt list --upgradable | grep linux

echo -e "\n🔹 Restarting System After Update..."
shutdown -r +1 "System rebooting in 1 minute for updates..."
