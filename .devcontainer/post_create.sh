#!/bin/bash

set -e

git config --local core.editor vim
git config --local pull.rebase false
echo "source /usr/share/bash-completion/completions/git" >> ~/.bashrc
