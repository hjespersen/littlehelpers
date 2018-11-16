#!/bin/bash

wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.19.1/linux-headers-4.19.1-041901_4.19.1-041901.201811041431_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.19.1/linux-headers-4.19.1-041901-generic_4.19.1-041901.201811041431_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.19.1/linux-modules-4.19.1-041901-generic_4.19.1-041901.201811041431_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.19.1/linux-image-unsigned-4.19.1-041901-generic_4.19.1-041901.201811041431_amd64.deb
sudo dpkg -i *.deb
