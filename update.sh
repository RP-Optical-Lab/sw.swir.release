#!/bin/bash

usage () {
	echo "# usage:   ./update.shfile"
	echo "# example: ./update.sh v0.0.3.tar.gz"
	echo
	exit 1
}

sayAndDo () {
	echo $@
	eval $@
	if [ $? -ne 0 ]; then
		echo "# - error: Command failed!"
		echo
		exit 1
	fi
}

echo "##############################################"
echo

FILE="$1"
FILENAME="$(basename "$FILE" .tar.gz)"

DESDIR="/home/max/sw.swir"
SCR_DIR="$DESDIR/scripts"
if [ ! -d "$DESDIR" ]; then
	sayAndDo    mkdir -p $DESDIR
fi
if [ ! -d "$SCR_DIR" ]; then
	sayAndDo    mkdir -p $SCR_DIR
fi
echo Update SW $FILE $FILENAME
sayAndDo    tar xvf $FILE -C $DESDIR
sayAndDo    cp $DESDIR/$FILENAME/README.md $DESDIR
sayAndDo    cp $DESDIR/$FILENAME/scripts/init.sh  $SCR_DIR/init.sh

echo
echo "# - done"
echo "# - restart the system"
echo