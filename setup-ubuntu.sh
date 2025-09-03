#!/bin/bash

### setup
mkdir -p tmp

### style

# conky
sudo apt install conky-all
mkdir -p ~/.conky
cp -r conky ~/.conky
mkdir -p ~/.config/autostart
cp conky.desktop ~/.config/autostart/conky.desktop

# fonts
mkdir -p ~/.local/share/fonts/
wget -O tmp/JetBrainsMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip"
unzip tmp/JetBrainsMono.zip tmp/JetBrainsMono
cp -r tmp/JetBrainsMono ~/.local/share/fonts/
cp -r fonts ~/.local/share/fonts/
fc-cache -fv

### apps

sudo snap install discord zoom slack

### tools

# python
curl -LsSf https://astral.sh/uv/install.sh | sh

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

sudo apt install git make cmake

### editors

sudo apt install vim
sudo snap install sublime-text --classic
sudo snap install clion --classic
sudo snap install pycharm --classic
sudo snap install code --classic

# neovim
wget -O tmp/nvim.tar.gz "https://github.com/neovim/neovim/releases/download/v0.11.2/nvim-linux-x86_64.tar.gz"
tar xzvf tmp/nvim.tar.gz -C /opt
sudo apt install ripgrep npm nodejs

# TODO: Set font to JetBrainsMono in terminal preferences.
# TODO: Install Chrome.
# TODO: Set wallpaper.
# TODO: Configure SSH keys.
