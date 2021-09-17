#!/bin/bash -
#===============================================================================
#
#          FILE: install-aws-vault.sh
#
#         USAGE: ./install-aws-vault.sh
#
#   DESCRIPTION: Install AWS Vault on Debian based OS
#
#        AUTHOR: Anastasia Protopapa
#===============================================================================

sudo wget https://github.com/99designs/aws-vault/releases/download/v6.3.1/aws-vault-linux-amd64 -O /usr/local/bin/aws-vault && \
sudo chmod +x /usr/local/bin/aws-vault

aws-vault --version