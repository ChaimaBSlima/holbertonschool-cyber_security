#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root"
  exit 1
fi

# Allow incoming TCP connections on port 80
iptables -A INPUT -p tcp --dport 80 -j ACCEPT

# Drop all other incoming connections
iptables -P INPUT DROP

echo "Rules updated"

