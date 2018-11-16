#!/bin/bash

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" >> /etc/apt/sources.list.d/virtualbox.list'
sudo apt update
sudo apt -y install gcc make linux-headers-$(uname -r) dkms
sudo apt update
sudo apt install -y virtualbox-5.2
wget https://download.virtualbox.org/virtualbox/5.2.22/Oracle_VM_VirtualBox_Extension_Pack-5.2.22.vbox-extpack
vboxmanage extpack install --replace Oracle_VM_VirtualBox_Extension_Pack-5.2.22.vbox-extpack
sudo usermod -aG vboxusers $USER

