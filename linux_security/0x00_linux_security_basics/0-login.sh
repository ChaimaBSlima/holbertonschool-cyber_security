#!/bin/bash
[ "$(id -u)" -ne 0 ] && exit 1; sudo last | head -n 5
