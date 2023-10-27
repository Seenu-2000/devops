#!/bin/bash
set -e

# Hook: BeforeInstall
sudo apt-get update
sudo apt-get upgrade -y

# Install Node.js and NPM
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# Hook: AfterInstall
sudo chown -R ubuntu:ubuntu /var/www/myapp
mv /home/ubuntu/myfiles/package.json /var/www/myapp/
mv /home/ubuntu/myfiles/nodescript.js /var/www/myapp/
cd /var/www/myapp
sudo npm install
sudo npm install -g pm2

# Hook: ApplicationStart
cd /var/www/myapp
pm2 start nodescript.js -f
