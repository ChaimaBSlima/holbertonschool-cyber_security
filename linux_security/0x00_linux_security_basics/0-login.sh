#!/bin/bash
[ "$(id -u)" -ne 0 ] && exit 1; sudo last -F | head -n 5
