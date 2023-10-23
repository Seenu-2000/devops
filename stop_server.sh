#!/bin/bash

# Check if a Node.js application is running
isExistApp="$(pgrep node)"

if [[ -n $isExistApp ]]; then
  # Stop the Apache service (replace 'apache2' with your service name)
  systemctl stop apache2 
fi
