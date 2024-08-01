#!/bin/bash
head -c "${1:-12}" /dev/urandom | tr -dc '[:alnum:]'