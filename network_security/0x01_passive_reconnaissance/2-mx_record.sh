#!/bin/bash
nslookup -query=mx "$1" | awk '/^Server:/ {sub(/^Server: /, "Server: "); $1=""; print $0} /^Address: / {sub(/^Address: /, "Address: "); $1=""; print $0} /mail exchanger/ {sub(/^.*mail exchanger = /, "mail exchanger = "); $1=""; print $0}'
