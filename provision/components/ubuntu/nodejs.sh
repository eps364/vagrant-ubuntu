#!/bin/bash
echo "Install nodejs"

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt update
apt install -y nodejs
node -v