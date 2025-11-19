#!/bin/sh

if [[ $EUID -ne 0 ]]; then
   	echo "This script must be run as root" 
   	exit 1
else
    echo "Starting Post Installation Scripts..."
fi

MYHOME=$HOME

. ./snap/install-snap.sh
. ./brave/install-brave.sh
. ./keepassxc/install-keepassxc.sh
. ./gitkraken/install-gitkraken.sh
. ./yazi/install-yazi.sh

echo "Adding some extra Alias to Zsh..."

if grep -q "# == MY EXTRAS ==" "$MYHOME/.zshrc"; then
    echo "-- Skip Zshrc EXTRA already present"
else
    cat ./extra-zshrc >> $MYHOME/.zshrc  
fi

. ./dotnet/install-dotnet.sh
. ./aspire/install-aspire.sh
. ./zsh/install-zsh.sh
. ./vscode/install-vscode.sh
# . ./rider/install-rider.sh
