#!/bin/bash
[ "$(id -u)" -ne 0 ] && { echo "This script must be run as root"; exit 1; }; iptables -t security -L -v
