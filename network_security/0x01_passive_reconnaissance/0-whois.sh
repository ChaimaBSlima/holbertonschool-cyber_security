#!/bin/bash
whois "$1" | awk -F': ' '/^(Registrant|Admin|Tech) / {sub(/ /, "_", $1); print $1 "," $2}' > "$1.csv"
