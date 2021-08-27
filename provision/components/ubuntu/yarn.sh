#!/bin/bash
echo "Install yarn"
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
apt update
apt install yarn