#!/bin/bash
if [ "$(id -u)" -ne 0 ]; then
 exit 1
fi
last | head -n 5

