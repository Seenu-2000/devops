#!/bin/bash
set -e

# Copy files to destination
sudo cp /home/ubuntu/* /var/www/

# Restart nginx server
sudo systemctl restart nginx
