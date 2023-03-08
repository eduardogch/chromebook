#!/bin/bash

sudo apt-get -y update && sudo apt-get -y upgrade

sudo apt-get -y install build-essential curl gnupg git git-core wget gpg


#Node & NPM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm install node
nvm use node
npm config set strict-ssl false
npm config set registry http://registry.npmjs.org/

# Git config
git config --global user.name "Eduardo Gonzalez"
git config --global user.email eduardo.gch@gmail.com
ssh-keygen -t rsa -C $USER"@localhost"

# Clean system
sudo apt-get -f install && apt-get autoremove && apt-get -y autoclean && apt-get -y clean
