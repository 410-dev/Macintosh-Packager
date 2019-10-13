#!/bin/bash
ROOTFS="/"
LIBRARY=$ROOTFS"usr/local/bin"
echo "Preinst started."
if [[ -e $LIBRARY/mpkg* ]]; then
	echo "Erasing previous binaries..."
	sudo rm $LIBRARY/mpkg*
fi
