#!/bin/bash
echo "===== 🔐 Server Security Hardening Script 🔐 ====="

echo -e "\n🔹 Disabling Root SSH Login..."
sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
systemctl restart sshd

echo -e "\n🔹 Updating & Upgrading System..."
apt update -y && apt upgrade -y

echo -e "\n🔹 Setting Up Basic Firewall (UFW)..."
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw enable

echo -e "\n✅ Security Hardening Completed! System Secured."
