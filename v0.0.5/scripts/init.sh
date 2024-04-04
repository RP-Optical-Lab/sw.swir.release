#!/bin/sh

# Script on startup 

sayAndDo () {
	echo $@
	eval $@
	if [ $? -ne 0 ]; then
		echo "# ERROR: Command failed!"
		exit 1
	fi
}

sayAndDo '/home/max/sw.swir/output/sve /home/max/sw.swir/_params_crocus.json'

