#!/bin/bash

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.3-amd64.deb
sudo apt install -y ./slack-desktop-3.3.3-amd64.deb
sudo apt-get update 
sudo apt-get upgrade -y slack-desktop
