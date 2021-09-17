#!/bin/bash -
#===============================================================================
#
#          FILE: install-core-software.sh
#
#         USAGE: ./install-core-software.sh
#
#   DESCRIPTION: Script to install utility/entertainment software
#
#        AUTHOR: Anastasia Protopapa
#===============================================================================


set -e
user=$(whoami)

sudo apt-get update;

# VLC Media Player

sudo apt-get install vlc

# Atom
sh software-scripts/install-atom.sh

#Misc and Stuff
sudo apt-get install curl
sudo apt-get install snapd


