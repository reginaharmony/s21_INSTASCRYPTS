#!/bin/bash

cd ~ && cd goinfre
git clone https://github.com/Homebrew/brew homebrew
eval "$(~/goinfre/homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"
brew install lcov
brew install neofetch
brew install powerlevel10k
source ~/goinfre/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zshrc
pwd && ls && cdr ~
neofetch
bree
echo "done!"