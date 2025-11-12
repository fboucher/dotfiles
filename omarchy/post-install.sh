#!/bin/sh

MYHOME=$HOME


. ../brave/install-brave.sh
. ../rider/install-rider.sh
. ../keepassxc/install-keepassxc.sh
. ../gitkraken/install-gitkraken.sh
. ../yazi/install-yazi.sh


echo "Adding some extra bindings to omarchy..."

if grep -q "# == MY EXTRAS ==" "$MYHOME/.config/hypr/bindings.conf"; then
    echo "-- Skip bindings EXTRA already present"
else
    cat ./extra-bindings.conf >> $MYHOME/.config/hypr/bindings.conf 
fi

echo "Adding some extra Alias to Bash..."

if grep -q "# == MY EXTRAS ==" "$MYHOME/.bashrc"; then
    echo "-- Skip Bashrc EXTRA already present"
else
    cat ./extra-bashrc >> $MYHOME/.bashrc  
fi


. ../ghostty/install-ghostty.sh
. ../dotnet/install-dotnet.sh
. ../aspire/install-aspire.sh

