#!/bin/bash

# Docker
sudo apt install -y docker.io
sudo usermod -a -G docker $USER
sudo apt install docker-compose

# Lazy Docker
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
