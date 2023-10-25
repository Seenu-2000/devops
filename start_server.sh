#!/bin/bash
set -e

# Navigate to the appropriate directory where nodescript.js is located
cd /var/www/myapp

# Start your Node.js application with PM2, forcing re-execution
pm2 start nodescript.js -f
