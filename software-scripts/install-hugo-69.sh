#!/bin/bash - 
#===============================================================================
#
#          FILE: install-hugo-69.sh
# 
#         USAGE: ./install-hugo-69.sh 
# 
#   DESCRIPTION: Install Hugo in Debian based OS 
# 
#        AUTHOR: Anastasia Protopapa (natassa.prt@gmail.com), 
#       CREATED: 2020-04-11 13:41:41
#===============================================================================


set -e
user=$(whoami)


wget https://github.com/gohugoio/hugo/releases/download/v0.69.0/hugo_0.69.0_Linux-64bit.deb -P ~/Downloads
sudo apt install /home/${user}/Downloads/hugo_*.deb

