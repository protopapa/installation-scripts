#!/bin/bash - 
#===============================================================================
#
#          FILE: install-git.sh
# 
#         USAGE: ./install-git.sh 
# 
#   DESCRIPTION: Installation of git on Debian based systems
# 
#        AUTHOR: Anastasia Protopapa, 
#       CREATED: 2020-04-05 15:09:02
#      REVISION:  001
#===============================================================================


if [ -f /etc/os-release ]; then
	# freedesktop.org and systemd
	. /etc/os-release
    	OS=$NAME
	VER=$VERSION_ID
fi

 echo "OS: "$OS" with version: "$VER

if [ "$OS" = "Ubuntu" ]; then 
         sudo add-apt-repository ppa:git-core/ppa 
         sudo apt update; sudo apt install git
elif [ "$OS" = "Debian GNU/Linux" ]; then
         sudo apt-get update; sudo apt-get install git
else
         echo "This script does not work for "$OS
fi

git --version

