#!/bin/bash
apt autoremove -y
apt list --upgradable -a
node /vagrant/src/server.js