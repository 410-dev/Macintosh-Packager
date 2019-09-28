#!/bin/bash
ROOTFS="/"
LIBRARY=$ROOTFS"usr/local/mpkglib"
if [[ -e $LIBRARY/db/installed ]]; then
	echo "Converting depricated library..."
	sudo rm $LIBRARY/db/installed
	sleep 3
	if [[ -e $LIBRARY/db/installed ]]; then
		sudo touch $LIBRARY/convert_failed
	fi
fi
