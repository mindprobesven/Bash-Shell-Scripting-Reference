#!/bin/sh

# For
# ----------------------------------------------------------------------

for item in 0 1 2 3 4 5
do
	echo $item
done

# -----------------------------------

for FILE in $HOME/.bash*
do
	echo $FILE
	echo "`basename $FILE`"
done

