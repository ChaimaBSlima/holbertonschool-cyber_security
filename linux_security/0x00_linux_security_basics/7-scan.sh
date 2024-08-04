#!/bin/bash
[ "$EUID" -ne 0 ] && { echo "Please run as root"; exit 1; }; sudo nmap "$1"
