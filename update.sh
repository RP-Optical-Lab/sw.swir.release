#!/bin/bash

DIRECTORY="/home/max/sw.swir"

usage () {
	echo "# usage:   ./update.sh version"
	echo "# example: ./update.sh v0.0.3"
	echo
	exit 1
}

say_and_do () {
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

SW="$1"
if [ -z "$SW" ]; then
	echo "# - error: SW version must be specified"
	usage
else
	echo "# - Set version $SW"
fi

if pgrep -x "sve" > /dev/null; then
    say_and_do sudo killall sve
fi

# say_and_do	sudo cp ./old_bin/sve /usr/bin/

if [ -d "$DIRECTORY" ]; then
  	echo "Remove old version"
	say_and_do 	rm -rf $DIRECTORY
	say_and_do	mkdir -p $DIRECTORY	
fi

# say_and_do	git clone https://github.com/RP-Optical-Lab/sw.swir.release.git
# say_and_do	cd sw.swir.release
say_and_do 	cp -r $SW/* $DIRECTORY
say_and_do 	chmod +x $DIRECTORY/output/sve
# say_and_do	sudo $DIRECTORY/scripts/init.sh &

echo
echo "# - done"
echo "# - restart the system"
echo