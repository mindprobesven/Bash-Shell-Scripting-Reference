#!/bin/sh

# Date
# ----------------------------------------------------------------------

PREV_TIME=0

while [ 1 ]
do
	CURRENT_TIME=$(date +%s)
	if [ $((CURRENT_TIME - PREV_TIME)) -ge 3 ]
	then
		echo $CURRENT_TIME
		PREV_TIME=$CURRENT_TIME
	fi
	sleep 1
done

