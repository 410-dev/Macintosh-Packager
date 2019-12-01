#!/bin/bash
ROOTFS="/"
LIBRARY=$ROOTFS"usr/local/bin"
echo "Preinst started."
if [[ -f $LIBRARY/mpkg* ]]; then
	echo "Erasing previous binaries..."
	sudo rm $LIBRARY/mpkg*
	sudo rm -rf /usr/local/mpkglib/binary
fi
