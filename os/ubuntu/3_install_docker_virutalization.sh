#!/bin/bash

# Docker
sudo apt install -y docker.io
sudo usermod -a -G docker $USER
sudo apt install docker-compose
