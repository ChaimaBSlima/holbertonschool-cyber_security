#!/bin/bash
ssh-keygen -t rsa -b 4096 -f "$1" -N "" && printf "SSH key pair generated successfully: Private key: %s, Public key: %s.pub\n" "$1" "$1" || printf "Failed to generate SSH key pair\n"
