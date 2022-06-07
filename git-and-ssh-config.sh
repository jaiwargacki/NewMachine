#!/bin/bash

if test "$#" -ne 2; then
    echo "Illegal number of parameters"
    echo "usage: sh git-and-ssh-config.sh "[name]" [email]"
fi

# git config
git config --global --replace-all user.name "$1"
git config --global --replace-all user.email "$2"

# make key
mkdir $HOME/.ssh
ssh-keygen -t rsa -b 4096 -C $2

eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_rsa
echo
cat ~/.ssh/id_rsa.pub
