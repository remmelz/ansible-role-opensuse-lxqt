#!/bin/bash

zypper -n dist-upgrade
zypper -n install git ansible

mkdir /etc/ansible/roles
cd /etc/ansible/roles || exit 1
git clone https://github.com/remmelz/ansible-role-opensuse-lxqt.git

echo
echo "cd ansible-role-opensuse-lxqt || exit 1"
echo "ansible-playbook -c local -i 'localhost,' ./playbook.yml"
echo
