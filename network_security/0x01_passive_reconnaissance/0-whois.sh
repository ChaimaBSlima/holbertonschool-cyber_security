#!/bin/bash
whois "$1" | awk '/Registrant Name/ {print "Registrant Name," $2} /Admin Name/ {print "Admin Name," $2} /Tech Name/ {print "Tech Name," $2}' > "$1.csv"

