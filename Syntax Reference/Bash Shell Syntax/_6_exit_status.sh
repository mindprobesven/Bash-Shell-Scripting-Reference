#!/bin/bash

# Exit status
# ---------------------------------------------------------
# exit 0 = OK
# exit 1 = ERROR

filename="temp.txt"

if [ -n $filename ];
then
	echo "$?: Filename is not non-zero length"
	if [ ! -f $filename ];
	then
		echo "$?; File $filename does not exist. aborting!"
		exit 1
	fi
fi

