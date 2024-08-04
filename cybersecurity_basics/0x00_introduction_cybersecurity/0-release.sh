#!/bin/bash
lsb_release -si  | awk 'NR==1'
