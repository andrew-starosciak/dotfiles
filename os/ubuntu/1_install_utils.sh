#!/bin/bash

# Common utilities
sudo apt install -y tree curl wget htop ufw gufw cryptsetup encfs jq pass
sudo pip3 install yt-dlp
sudo pip3 install tldr

# Terminal
sudo snap install alacritty --classic

# Starship.rs
curl -sS https://starship.rs/install.sh | sh

# Match executables for namespace collisions with ubunutu.
ln -s $(which fdfind) ~/.local/bin/fd # fdfind -> fd

# LazyGit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm -rf lazygit.tar.gz && rm -rf lazygit/
