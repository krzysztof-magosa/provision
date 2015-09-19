#! /bin/bash

export PATH="$PATH:/opt/ansible/bin"

[ -d /opt/ansible ] && exit 0

xcode-select -p >/dev/null 2>&1
if [ $? -eq 0 ]; then
    xcode-select --install
fi

sudo easy_install pip
sudo pip install pyyaml
sudo pip install jinja2
sudo pip install six

sudo mkdir -p /opt/ansible
sudo git clone https://github.com/ansible/ansible.git /opt/ansible --recursive
sudo bash /opt/ansible/hacking/env-setup
