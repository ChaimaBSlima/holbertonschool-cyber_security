#!/bin/bash
{ echo "Server: $(nslookup "$1" | awk '/^Server:/ {print $2}')" ; echo "Address: $(nslookup "$1" | awk '/^Address: / {print $2}' | tr '\n' ' ')"; }