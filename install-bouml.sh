#!/bin/bash

wget -q https://www.bouml.fr/bouml_key.asc -O- | sudo apt-key add -
echo "deb http://bouml.free.fr/apt/bionic bionic free" | sudo tee -a /etc/apt/sources.list
sudo apt update
sudo apt install -y bouml
