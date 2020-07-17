#!/bin/bash -
#===============================================================================
#
#          FILE: install-amazon-cli.sh
#
#         USAGE: ./install-amazon-cli.sh
#
#   DESCRIPTION: Installs Amazon CLI version 2 on Debian based OS
#
#        AUTHOR: Anastasia Protopapa,
#       CREATED: 2020-07-17 18:53:19
#===============================================================================

user=$(whoami)

rm ~/Downloads/awscliv2.zip

wget https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -O ~/Downloads/awscliv2.zip
unzip /home/${user}/Downloads/awscliv2.zip
sudo ./aws/install

aws --version
