#! /bin/bash

export PYTHONUSERBASE=~/.python
export PATH="$PATH:$PYTHONUSERBASE/bin"

xcode-select -p >/dev/null 2>&1
if [ $? -eq 0 ]; then
    xcode-select --install
fi

easy_install --user pip

pip install --user paramiko PyYAML Jinja2 httplib2 six ansible==2.2.0

# install needed external roles
ansible-galaxy install -r requirements.yml
