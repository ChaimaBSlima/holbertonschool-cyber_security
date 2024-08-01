#!/bin/bash
ssh-keygen -t rsa -b 4096 -f "$1" -N "" && echo "SSH key pair generated successfully: Private key: $1, Public key: $1.pub" || echo "Failed to generate SSH key pair"
