#!/bin/bash -
#===============================================================================
#
#          FILE: install-core-software.sh
#
#         USAGE: ./install-core-software.sh
#
#   DESCRIPTION: Script to install utility/entertainment software
#
#        AUTHOR: Anastasia Protopapa,
#       CREATED: 2020-04-05 16:48:05
#      REVISION:  001
#===============================================================================


set -e
user=$(whoami)

sudo apt-get update;

# VLC Media Player

sudo apt-get install vlc

# Google Chrome

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads
sudo apt install /home/${user}/Downloads/google-chrome-stable_current_amd64.deb

# Skype

wget https://go.skype.com/skypeforlinux-64.deb -P ~/Downloads
sudo apt install /home/${user}/Downloads/skypeforlinux-64.deb

# Atom

sh software-scripts/install-atom.sh

# Virtual-Box

sh software-scripts/install-vbox.sh

# Guake

# TLP

# Powertop

# smbios-thermal-ctl

# s-tui

sudo apt-get install curl

sudo apt-get install snapd

