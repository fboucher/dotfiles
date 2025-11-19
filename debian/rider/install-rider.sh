#!/bin/sh

echo "Installing Rider IDE..."

# Add JetBrains repository
wget -qO- https://packages.jetbrains.team/keys/jetbrains.asc | sudo tee /etc/apt/trusted.gpg.d/jetbrains.asc > /dev/null

echo "deb https://packages.jetbrains.team/rider/deb stable main" | sudo tee /etc/apt/sources.list.d/jetbrains-rider.list

# Update and install
sudo apt update
sudo apt install -y rider
