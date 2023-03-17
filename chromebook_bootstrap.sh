#!/bin/bash

sudo apt-get -y update && sudo apt-get -y upgrade

sudo apt-get -y install build-essential curl git git-core wget


#Node & NPM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm install 16
nvm use node
npm config set strict-ssl false
npm config set registry http://registry.npmjs.org/

# Git config
git config --global user.name "Eduardo Gonzalez"
git config --global user.email eduardo.gch@gmail.com
ssh-keygen -t rsa -C $USER"@localhost"


### .bashrc
force_color_prompt=yes

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
 PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\] $(parse_git_branch)\[\033[00m\]\$ '
else
 PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi

alias fe='cd ~/danti-fe && code .'


# Clean system
sudo apt-get -f install && sudo apt-get autoremove && sudo apt-get -y autoclean && sudo apt-get -y clean
