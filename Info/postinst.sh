#!/bin/bash
ROOTFS="/"
LIBRARY=$ROOTFS"usr/local/mpkglib"
if [[ -e $LIBRARY/db/installed ]]; then
	sudo rm $LIBRARY/db/installed
	if [[ -e $LIBRARY/db/installed ]]; then
		sudo touch $LIBRARY/convert_failed
	fi
fi
LIBRARY=$LIBRARY/linuxsupport
if [[ ! -z $(uname -a | grep "Linux") ]]; then
	sudo cp $LIBRARY/mpkg /usr/local/bin
	sudo cp $LIBRARY/mpkg-make /usr/local/bin
	echo "Linux version mpkg installed."
fi
