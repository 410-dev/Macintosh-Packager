#!/bin/bash
ROOTFS="/"
LIBRARY=$ROOTFS"usr/local/bin"
if [[ -e $LIBRARY/mpkg* ]]; then
	echo "Erasing previous binaries..."
	sudo rm $LIBRARY/mpkg*
fi
