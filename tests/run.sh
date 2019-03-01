#!/bin/bash

zypper -n install git ansible

mkdir /etc/ansible/roles
cd /etc/ansible/roles || exit 1
git clone https://github.com/remmelz/ansible-role-opensuse-lxqt.git

cd ansible-role-opensuse-lxqt || exit 1
ansible-playbook -vvv -c local -i '127.0.0.1,' ./tests/run.yml

