#!/bin/bash -
#===============================================================================
#
#          FILE: install-software.sh
#
#         USAGE: ./install-software.sh
#
#   DESCRIPTION:
#
#  REQUIREMENTS: Debian based OS
#        AUTHOR: Anastasia Protopapa,
#===============================================================================

set -e

# Core OS components

echo "Install core components"
sudo apt-get update; sudo apt-get install unzip


# Git

echo "Install Git"
sh software-scripts/install-git.sh

# Java 11

echo "Install Java 11"
sh software-scripts/install-java-11.sh

# Docker

echo "Install Docker Engine"
sh software-scripts/install-dockerEngine.sh

# GoLang

# NodeJs
sh software-scripts/install-NodeJs.sh 

# Amazon CLI
sh software-scripts/install-amazon-cli.sh

# Hugo
sh software-scripts/install-hugo.sh

#IntelliJ

sudo snap install intellij-idea-ultimate --classic

# Webstorm

sudo snap install webstorm --classic

#Install bazel build tool

sh software-scripts/install-bazel.sh

#Install Aws Vault

sh software-scripts/install-aws-vault.sh


# Clean
echo "Cleaning ...."

rm -rf ~/Downloads/*
rm -rf /home/$(whoami)/Downloads/*
