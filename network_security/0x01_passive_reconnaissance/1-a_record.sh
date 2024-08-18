#!/bin/bash
nslookup "$1" | awk '/^Server:/ {print "Server: " $2} /^Address: / {print "Address: " $2}'

