#!/bin/bash
set -e

# Navigate to the appropriate directory where nodescript.js is located
cd /var/www/myapp

# Start your Node.js application with PM2
pm2 start nodescript.js
