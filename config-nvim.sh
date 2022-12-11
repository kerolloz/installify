#!/bin/bash
mkdir -p ~/.config/nvim/
cp ./config/init.vim ~/.config/nvim/
# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
# Install plugins
vim +PluginInstall +qall
