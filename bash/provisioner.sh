#!/bin/bash

sudo apt-get -y update &&
sudo apt-get -y upgrade &&
sudo apt-get install -y python-pip expect sshpass &&

sudo -H pip install --upgrade pip &&
sudo -H pip install --upgrade cryptography &&
sudo -H pip install ansible==2.4.3.0

echo "[defaults]" > ~/.ansible.cfg
echo "host_key_checking = False" >> ~/.ansible.cfg

cd /vagrant/

bash/provision.sh
