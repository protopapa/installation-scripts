#!/bin/bash -
#===============================================================================
#
#          FILE: install-bazel.sh
#
#         USAGE: ./install-bazel.sh
#
#   DESCRIPTION: Install B<el on Debian based OS
#
#        AUTHOR: Anastasia Protopapa,
#===============================================================================

sudo wget https://github.com/bazelbuild/bazelisk/releases/download/v1.6.1/bazelisk-linux-amd64 -O /usr/local/bin/bazel && \
sudo chmod +x /usr/local/bin/bazel