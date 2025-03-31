#!/bin/bash
echo "===== 🔍 Auto User Lock & Audit Script 🔍 ====="

echo -e "\n🔹 Checking Users With Recent Logins:"
lastlog | grep -v "Never logged in"

echo -e "\n🔹 Checking Suspicious Users..."
awk -F: '($3 >= 1000) {print $1}' /etc/passwd

echo -e "\n🔹 Locking Suspicious Accounts..."
for user in $(awk -F: '($3 >= 1000) {print $1}' /etc/passwd); do
    passwd -l $user
done

echo -e "\n✅ User Audit Completed!"
