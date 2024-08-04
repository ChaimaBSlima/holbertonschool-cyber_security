#!/bin/bash
[ "$(id -u)" -ne 0 ] && { echo "This script must be run as root"; exit 1; }; sudo netstat -tul -p
