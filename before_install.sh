#!/bin/bash

# Remove existing content in the /var/www/html directory
rm -rf /var/www/html/*

# Make sure the scripts are executable
chmod +x before_install.sh
chmod +x after_install.sh
chmod +x start_server.sh
chmod +x stop_server.sh
