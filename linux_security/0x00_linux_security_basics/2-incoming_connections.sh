#!/bin/bash
[ "$(id -u)" -ne 0 ] && echo "This script must be run as root" && exit 1; sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT && sudo iptables -P INPUT DROP && echo "Rules updated"
