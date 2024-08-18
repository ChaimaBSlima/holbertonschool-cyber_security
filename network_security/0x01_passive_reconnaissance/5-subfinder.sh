#!/bin/bash
subfinder -d $1 | while read -r subdomain; do dig +short "$subdomain" | awk -v host="$subdomain" 'NR==1{print host "," $0}'; done > "$1.txt"
