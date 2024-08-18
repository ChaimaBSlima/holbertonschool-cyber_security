#!/bin/bash
echo -e "Server:\t$(nslookup "$1" | awk '/^Server:/ {print $2}')\nNon-authoritative answer:\nName:\t$1\n$(nslookup "$1" | awk '/^Address: / {print "Address:
