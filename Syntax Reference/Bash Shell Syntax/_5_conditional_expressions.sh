#!/bin/bash

# Conditional Expressions
# ------------------------------------------------------------
# Complete list in 'man bash' line 2432

filename="temp.txt"

if [ -f $filename ];
then
	echo "$?: File exists"
else
	echo "$?: File does not exist"
fi

# Other conditionals
# -a true if file exist
# -f true if file exist and is regular file
# -d true if directory
# -w true if writable
# -n true if length of string is non-zero
