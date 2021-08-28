#!/bin/bash
echo "________________  Update and Upgrade of OS"
apt update
apt upgrade -y
apt autoremove
echo "________________  Install snap"
apt install -y snapd 
echo "________________  Install nodejs and npm"
snap install node --classic
echo "________________  Install mongodb"
snap install mongo44-configurable
