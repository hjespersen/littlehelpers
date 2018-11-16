#!/bin/bash

sudo apt install virtualbox
sudo apt install virtualbox-ext-pack
wget https://download.virtualbox.org/virtualbox/5.2.22/Oracle_VM_VirtualBox_Extension_Pack-5.2.22.vbox-extpack
vboxmanage extpack install --replace Oracle_VM_VirtualBox_Extension_Pack-5.2.22.vbox-extpack
sudo usermod -aG vboxusers $USER

