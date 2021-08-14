#!/bin/bash - 
#===============================================================================
#
#          FILE: install-hugo.sh
# 
#         USAGE: ./install-hugo.sh
# 
#   DESCRIPTION: Install Hugo in Debian based OS 
# 
#        AUTHOR: Anastasia Protopapa,
#===============================================================================


set -e
user=$(whoami)


wget https://github.com/gohugoio/hugo/releases/download/v0.87.0/hugo_0.87.0_Linux-64bit.deb -P ~/Downloads
sudo apt install /home/${user}/Downloads/hugo_*.deb

