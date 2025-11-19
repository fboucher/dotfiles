#!/bin/sh

echo "== Installing .NET SDK for Debian..."


wget https://packages.microsoft.com/config/debian/13/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

dpkg -i packages-microsoft-prod.deb

rm packages-microsoft-prod.deb

apt-get update

apt -y install -y dotnet-sdk-10.0
apt -y install -y dotnet-runtime-10.0
apt -y install -y aspnetcore-runtime-10.0



echo "== Installing dotnet dev-certs for linux..."

dotnet tool update -g linux-dev-certs

dotnet linux-dev-certs install
