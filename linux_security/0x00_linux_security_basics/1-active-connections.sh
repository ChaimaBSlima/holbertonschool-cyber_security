#!/bin/bash
[ "$(id -u)" -ne 0 ] && exit 1; ss -tnlp
