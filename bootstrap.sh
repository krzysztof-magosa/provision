#! /bin/bash

[ -d /opt/ansible ] && exit 0

sudo easy_install pip
sudo pip install pyyaml
sudo pip install jinja2
sudo pip install six

sudo mkdir -p /opt/ansible
sudo git clone https://github.com/ansible/ansible.git /opt/ansible --recursive
sudo bash /opt/ansible/hacking/env-setup
