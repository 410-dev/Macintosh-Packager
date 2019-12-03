#!/bin/bash
D="$1"
if [[ -z "$1" ]]; then
	echo -n "Drag& Drop the folder: "
	read D
	if [[ ! -d "$D" ]]; then
		echo "No such file or directory."
		exit
	fi
fi
cd "$D"
mkdir -p ./compiled
for f in mpkg*; do
	echo "Compiling: $f"
	shc -f $f
	gcc "$f.x.c" -o ./compiled/$f
	echo "Finished: $f"
done
echo "Cleaning..."
rm *.x
rm *.c
echo "Setting permission..."
chmod +x ./compiled/*
echo "Removing previous scripts..."
for f in mpkg*; do
	rm $f
	echo "Removed: $f"
done
echo "Transfering..."
cd compiled
for f in *; do
	mv $f ../$f
	echo "Moved: $f"
done
echo "Cleaning..."
rm -r compiled
echo "Done."