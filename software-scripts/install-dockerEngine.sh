#!/bin/bash - 
#===============================================================================
#
#          FILE: install-dockerEngine.sh
# 
#         USAGE: ./install-dockerEngine.sh 
# 
#   DESCRIPTION: Install Docker Engine on Debian based systems. 
# 
#        AUTHOR: YOUR NAME (), 
#       CREATED: 2020-05-05 17:57:14
#===============================================================================

sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io




sudo groupadd docker
sudo usermod -aG docker protopapa
