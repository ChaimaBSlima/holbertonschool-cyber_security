#!/bin/bash
[ "$(id -u)" -ne 0 ] && echo "This script must be run as root" && exit 1; sudo ufw allow 80/tcp && sudo ufw default deny incoming && echo "Rules updated"
