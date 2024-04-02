#!/bin/bash

# Install Neovim
sudo apt update
sudo apt install neovim curl unzip bash -y

# Install Oh My Bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Optionally, you might want to set Neovim as the default editor
echo "export EDITOR=nvim" >> ~/.bashrc

# Optionally, you might want to set Neovim as the default git editor
echo "export GIT_EDITOR=nvim" >> ~/.bashrc
./config-nvim.sh

echo "Neovim and Oh My Bash have been installed successfully!"

