#!/bin/bash
set -e

sudo chown -R ubuntu:ubuntu /var/www/myapp

# Navigate to the target directory
cd /var/www/myapp/

# Install Node.js application dependencies using NPM
npm install

# Additional application-specific post-installation tasks can be added here
# For example, you can configure environment variables or set up your application database.

# Note that you should customize these scripts to match your application's specific requirements.
