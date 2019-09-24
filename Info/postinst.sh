#!/bin/bash
ROOTFS="/"
LIBRARY=$ROOTFS"usr/local/mpkglib"
if [[ -e $LIBRARY/db/installed ]]; then
	sudo rm $LIBRARY/db/installed
	if [[ -e $LIBRARY/db/installed ]]; then
		sudo touch $LIBRARY/convert_failed
	fi
fi
