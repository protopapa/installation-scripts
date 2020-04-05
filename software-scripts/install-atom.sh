#!/bin/bash - 
#===============================================================================
#
#          FILE: install-atom.sh
# 
#         USAGE: ./install-atom.sh 
# 
#   DESCRIPTION: Installs Atom on Debian based OS 
# 
#        AUTHOR: Anastasia Protopapa, 
#       CREATED: 2020-04-05 18:53:19
#===============================================================================

user=$(whoami)

rm ~/Downloads/atom-amd64.deb

wget https://atom.io/download/deb -O ~/Downloads/atom-amd64.deb
sudo dpkg -i /home/${user}/Downloads/atom-amd64.deb
sudo apt-get install -f -y

rm ~/Downloads/atom-amd64.deb

