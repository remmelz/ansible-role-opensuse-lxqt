#!/bin/bash

zypper install git ansible python-xml || exit 1

mkdir -p /etc/ansible/roles
cd /etc/ansible/roles || exit 1

git clone https://github.com/remmelz/ansible-role-opensuse-lxqt.git

cd ansible-role-opensuse-lxqt || exit 1

ansible-playbook \
  -c local \
  -i 'localhost,' \
  ./tests/play.yml


