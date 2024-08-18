#!/bin/bash
nslookup "$1" | awk '/^Server:/ {printf "Server: %s\n", $2} /^Address: / {printf "Address: %s\n", $2}'
