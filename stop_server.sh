#!/bin/bash
set -e

# Navigate to the home directory of the "ubuntu"
cd /home/ubuntu

# Stop the Node.js application, if it's running
# Specify the script you want to stop, e.g., "node nodescript.js"

# If you're using PM2:
# pm2 stop nodescript.js

# If you're running your application directly:
# pkill -f "node nodescript.js"
