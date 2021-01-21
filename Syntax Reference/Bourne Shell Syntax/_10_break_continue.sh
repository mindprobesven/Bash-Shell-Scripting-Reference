#!/bin/sh

# Break and Continue
# ------------------------------------------------------------------------

a=0

while [ $a -lt 10 ]
do
	echo $a
	if [ $a -eq 5 ]
	then
		break
	fi
	a=`expr $a + 1`
done

# --------------------

NUMS="1 2 3 4 5 6 7"

for NUM in $NUMS
do
	Q=`expr $NUM % 2`
	if [ $Q -eq 0 ]
	then
		echo "Number is an even number!"
		continue
	fi
	echo "Found odd number"
done

