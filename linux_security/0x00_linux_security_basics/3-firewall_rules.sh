#!/bin/bash
[ "$(id -u)" -ne 0 ] && { echo "This script must be run as root"; exit 1; }; sudo iptables -t security -L -v