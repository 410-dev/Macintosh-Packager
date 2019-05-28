#!/bin/bash
ROOTFS="/"
LIBRARY=$ROOTFS"usr/local/mpkglib"
if [[ -e $LIBRARY/db/installed ]]; then
	echo "Unsupported Database type."
	echo "Please install mpkg < 2.1 first, then upgrade."
	sudo touch $1/compatibility-error
	exit
fi
