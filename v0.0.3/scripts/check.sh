#!/bin/sh

# echo "SVE: Run init script"

if [ -f "/home/max/sw.swir/scripts/init.sh" ]; then
    echo "/home/max/sw.swir/scripts/init.sh exists. Run..."
    chmod +x /home/max/sw.swir/scripts/init.sh
    /home/max/sw.swir/scripts/init.sh
else 
    echo "/home/max/sw.swir/scripts/init.sh does not exist."
fi