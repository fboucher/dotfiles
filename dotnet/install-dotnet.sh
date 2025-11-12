#!/bin/sh

# Skipping of .NET on Omarchy the result is better using the UI (and wise)

# curl -L https://dot.net/v1/dotnet-install.sh -o dotnet-install.sh

# chmod +x ./dotnet-install.sh

# ./dotnet-install.sh --channel 9.0

echo "Installing dotnet dev-certs for linux..."

dotnet tool update -g linux-dev-certs

dotnet linux-dev-certs install
