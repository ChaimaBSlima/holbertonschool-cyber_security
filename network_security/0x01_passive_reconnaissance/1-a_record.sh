#!/bin/bash
nslookup "$1" | awk '/^Server:/ {print $0} /^Address: / {print "Address: " $2}' | sed '1s/^/Server: 8.8.8.8\nAddress: 8.8.8.8#53\n\nNon-authoritative answer:\nName:   '"$1"'\n/' 
