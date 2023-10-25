#!/bin/bash
set -e

# Changing owner permission
sudo chown -R ubuntu:ubuntu /var/www/myapp

# Move the nodescript.js file to the target directory
mv /home/ubuntu/task/nodescript.js /var/www/myapp/

# Navigate to the target directory
cd /var/www/myapp

# Install Node.js application dependencies using NPM
npm install

# Install PM2 globally (if not already installed)
npm install -g pm2

# Start your Node.js application with the locally installed PM2
./node_modules/.bin/pm2 start nodescript.js


