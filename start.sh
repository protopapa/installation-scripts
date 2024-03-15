#!/usr/bin/bash

apt update

apt-get install python3 python3-pip python3-venv
python3 -m venv .venv

source .venv/bin/activate
if [[ "$VIRTUAL_ENV" == "" ]]
then
  echo "Python venv failed in activate. Exiting"
  exit 0
fi

python3 -m pip install --upgrade pip
python3 -m pip install  ansible

ansible-galaxy collection install community.general

ansible-playbook local-playbook.yaml
