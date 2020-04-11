#!/bin/bash - 
#===============================================================================
#
#          FILE: install-vbox.sh
# 
#         USAGE: ./install-vbox.sh 
# 
#   DESCRIPTION: Install Virtual Box on Debian based systems. 
# 
#        AUTHOR: Anastasia Protopapa (natassa.prt@gmail.com), 
#       CREATED: 2020-04-05 18:55:25
#===============================================================================


user=$(whoami)

#Add GPG key for VBox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
#Add VBox repo
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian bionic contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

sudo apt-get update
sudo apt install virtualbox-6.0

#Install VBox extension Pack
wget https://download.virtualbox.org/virtualbox/6.0.10/Oracle_VM_VirtualBox_Extension_Pack-6.0.10.vbox-extpack -P ~/Downloads
sudo VBoxManage extpack install /home/${user}/Downloads/Oracle_VM_VirtualBox_Extension_Pack-6.0.10.vbox-extpack
