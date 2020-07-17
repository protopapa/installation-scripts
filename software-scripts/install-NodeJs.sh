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

sudo apt-get update
curl -sL https://deb.nodesource.com/setup_14.x | bash -
sudo apt-get install -y nodejs
