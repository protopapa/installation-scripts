#!/bin/bash - 
#===============================================================================
#
#          FILE: install-mongodb-42.sh
# 
#         USAGE: ./install-mongodb-42.sh 
# 
#   DESCRIPTION: Install Mongo DB 4.2 on Debian lie systems 
# 
#        AUTHOR: Anastasia Protopapa (natassa.prt@gmail.com), 
#===============================================================================



wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list

sudo apt-get update
sudo apt-get install -y mongodb-org

echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-org-shell hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections

sudo systemctl start mongod
sudo systemctl status mongod
