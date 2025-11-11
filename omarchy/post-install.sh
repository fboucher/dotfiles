#!/bin/sh

MYHOME=$HOME

. ../ghostty/install-ghostty.sh
#. ../dotnet/install-dotnet.sh
. ../brave/install-brave.sh
. ../rider/install-rider.sh
. ../keepassxc/install-keepassxc.sh
. ../gitkraken/install-gitkraken.sh
. ../yazi/install-yazi.sh


if grep -q "# == MY EXTRAS ==" "$MYHOME/.config/hypr/bindings.conf"; then
    echo "-- Skip bindings EXTRA already present"
else
    cat ./extra-bindings.conf >> $MYHOME/.config/hypr/bindings.conf 
fi



if grep -q "# == MY EXTRAS ==" "$MYHOME/.bashrc"; then
    echo "-- Skip Bashrc EXTRA already present"
else
    cat ./extra-bashrc >> $MYHOME/.bashrc  
fi
