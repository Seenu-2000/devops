#!/bin/bash
set -e

# Copy files to destination
sudo cp /home/ssm-user/code/index.html /var/www/

# Restart nginx server
sudo systemctl restart nginx
