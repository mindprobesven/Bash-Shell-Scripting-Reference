#!/bin/sh

# Case
# ----------------------------------------------------------------------

option=$1

echo $option

case $option in
	-f)
		FILE=$2
		echo "File name is $FILE"
		;;
	-d)
		DIR=$2
		echo "Directory name is $DIR"
		;;
	*)
		echo "`basename $0`: usage: [-f file] | [-d directory]"
		exit 1
		;;
esac
