#!/bin/bash

zypper -n dist-upgrade
zypper -n install git ansible python-xml python2-pyOpenSSL

mkdir /etc/ansible/roles
cd /etc/ansible/roles || exit 1
git clone https://github.com/remmelz/ansible-role-opensuse-lxqt.git

cd ansible-role-opensuse-lxqt || exit 1
ansible-playbook -c local -i 'localhost,' ./tests/run.yml

