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
#       CREATED: 2020-04-05 14:56:57
#      REVISION:  001
#===============================================================================

set -e

# Core OS components

echo "Install core components"
sudo apt-get update; apt-get install unzip


# Git

echo "Install Git"
sh software-scripts/install-git.sh

# Java 11

echo "Install Java 11"
sh software-scripts/install-java-11.sh

# Maven 3.6.3

echo "Install Maven"
sh software-scripts/install-maven-3.sh

# Gradle 6.3

echo "Install Gradle"
sh software-scripts/install-gradle-6.sh


# Docker

# Docker Compose

# GoLang

# NodeJs

# Hugo 

# 


# Clean
echo "Cleaning ...."

rm -rf ~/Downloads/*
rm -rf /home/$(whoami)/Downloads/*
