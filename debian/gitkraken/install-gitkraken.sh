#!/bin/sh

echo "== Installing GitKraken..."

# Download and install GitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb   

apt -y install ./gitkraken-amd64.deb   