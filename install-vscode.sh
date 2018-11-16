#!/bin/bash
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code

# install extensions
code --install-extension ms-vscode.cpptools
code --install-extension twxs.cmake
code --install-extension xaver.clang-format
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension mine.cpplint
code --install-extension cschlosser.doxdocgen