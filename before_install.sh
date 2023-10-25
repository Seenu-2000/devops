#!/bin/bash
set -e

# Update and upgrade the system packages
sudo apt-get update
sudo apt-get upgrade -y

# Install Node.js and NPM
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
