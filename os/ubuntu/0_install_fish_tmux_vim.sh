#!/bin/bash

# Install Core Packages.
sudo apt update
sudo apt upgrade -y

# Add Repositories.
declare -a repositories=(
	"ppa:fish-shell/release-3" 	# e.g. "fish"
)

for repo in "${repositories[@]}"; do
	sudo apt-add-repository -y $repo
done

# Updates.
apt update

# Install packages.
declare -a packages=(
    "curl git cmake build-essential"
    "libssl-dev pkg-config"
    "software-properties-common"
	"fish tmux fzf ripgrep net-tools"
	"polybar"
	"fd-find shellcheck shfmt"
	"bat"
	"libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev"
	"python3 python3-dev python3-pip python3-tk python3-venv"
    "ranger nnn"
    "universal-ctags"
)

for package in "${packages[@]}"; do
	sudo apt install -y $package
done

# neovim snap
sudo snap install nvim --classic

# neovim python support
pip3 install -U pynvim

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
cargo install ripgrep

# Configure bat
mkdir -p ~S/.local/bin
ls -s /usr/bin/batcat ~/.local/bin/bat

# Install snaps
sudo snap install -y dragon # dragndrop for nnn

# Install Go.
sudo snap install go --classic

# Note. Git configured through gcm

# Enable fish by default
grep -q -F 'fish' ~/.bashrc || echo 'exec fish' >> ~/.bashrc
fish -c "chsh -s (command -s fish)"

# Enhance Fish with Oh-My-Fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > install_ohmyfish
fish install_ohmyfish --path=~/.local/share/omf --config=~/.config/omf --noninteractive

# Fish Plugin Manager.
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"

# Fish Plugins.
declare -a plugins=(
	"jorgebucaran/fisher"
	"jethrokuan/z"
	"jorgebucaran/nvm.fish"
	"PatrickF1/fzf.fish"
)

for plugin in "${plugins[@]}"; do
	fish -c "fisher install $plugin "
done

sudo update-alternatives --install /usr/bin/vi vi /snap/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /snap/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /snap/bin/nvim 60
sudo update-alternatives --config editor

## Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


## Configuring Vim
echo "Configuring neovim..."
mkdir -p ~/.vim
cd ~/.vim
mkdir -p tmp
cd tmp/
mkdir -p swap
mkdir -p undo
mkdir -p backup
cd

# configure NNN plugins
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

echo "All Done."
