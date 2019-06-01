#!/bin/bash
ROOTFS="/"
LIBRARY=$ROOTFS"usr/local/mpkglib"
if [[ -e $LIBRARY/db/installed ]]; then
	echo "Unsupported Database type."
	echo "Please install mpkg >= 5.2duo first, then upgrade."
	sudo touch $1/compatibility-error
	exit
fi
