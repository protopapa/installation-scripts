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


if [[ -f /etc/os-release ]]; then
	# freedesktop.org and systemd
	. /etc/os-release
    	OS=$NAME
	VER=$VERSION_ID
fi

 echo "OS: "$OS" with version: "$VER

 if [[ "$OS" == "Ubuntu" ]]; then 
         add-apt-repository ppa:git-core/ppa 
         apt update; apt install git
 elif [[ "$OS" == "Debian" ]]; then
         apt-get update; apt-get install git
 else
         echo "This script does not work for "$OS
fi

git --version

