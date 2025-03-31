#!/bin/bash
echo "===== 🚀 Network Troubleshooting Script 🚀 ====="

echo -e "\n🔹 Checking IP Configuration:"
ip a | grep "inet "  

echo -e "\n🔹 Checking Default Gateway:"
ip route | grep default  

echo -e "\n🔹 Checking DNS Resolution (Google DNS Test):"
ping -c 3 8.8.8.8  

echo -e "\n🔹 Checking External Connectivity (Google.com):"
curl -Is https://www.google.com | head -1  

echo -e "\n🔹 Checking Open Ports:"
netstat -tulnp | grep LISTEN  
