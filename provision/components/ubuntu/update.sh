#!/bin/bash
echo "Update and Upgrade of OS"
#do-release-upgrade -y
#yes | do-release-upgrade
apt update
apt upgrade -y

