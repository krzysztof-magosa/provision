#! /bin/bash

[ -d /opt/ansible ] && exit 0

sudo mkdir -p /opt/ansible
sudo git clone https://github.com/ansible/ansible.git /opt/ansible --recursive
sudo bash /opt/ansible/hacking/env-setup
