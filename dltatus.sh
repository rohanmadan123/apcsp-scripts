#!/bin/bash



DROPLETS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

for droplet in $DROPLETS  ; do
	echo $droplet
	ping $droplet > /dev/null
	if [ $? -eq 0 ] ;
	then
		echo ":alive"
	else 
		echo ":dead"
	fi
done



exit 0
