#!/bin/bash
ROOTFS="/"
LIBRARY=$ROOTFS"usr/local/mpkglib"
if [[ -f $LIBRARY/db/installed ]]; then
	echo "Converting depricated library..."
	sudo rm $LIBRARY/db/installed
	sleep 3
	if [[ -f $LIBRARY/db/installed ]]; then
		sudo touch $LIBRARY/convert_failed
	fi
fi
