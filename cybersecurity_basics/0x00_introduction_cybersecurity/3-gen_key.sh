#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <key_name>"
    exit 1
fi

KEY_NAME=$1

ssh-keygen -t rsa -b 4096 -f "$KEY_NAME" -N ""

if [ $? -ne 0 ]; then
    echo "Failed to generate SSH key pair"
    exit 1
fi

echo "SSH key pair generated successfully:"
echo "Private key: $KEY_NAME"
echo "Public key: $KEY_NAME.pub"
