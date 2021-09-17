#!/bin/bash - 
#===============================================================================
#
#          FILE: install-dropbox.sh
# 
#         USAGE: ./install-dropbox.sh 
# 
#   DESCRIPTION: Install Dropbox on Debian based systems. 
# 
#        AUTHOR: Anastasia Protopapa 
#===============================================================================


user=$(whoami)

wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb -O ~/Downloads/dropbox.deb

sudo dpkg -i /home/protopapa/Downloads/dropbox.deb

sudo apt install -f

sudo apt-get install python3-gpg

