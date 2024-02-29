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
# sayAndDo 'ifconfig eth0 10.0.0.231 up'
# sayAndDo ''
# echo "#####################################################################"


# echo "Start init script"
# sleep 5
# echo "Add static ip to eth0"
# #ip a add 10.0.0.200/24 dev eth0
# ip addr add 10.0.0.200/24 dev eth0:0
