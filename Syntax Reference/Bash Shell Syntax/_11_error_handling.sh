#!/bin/bash

# Error handling
# ------------------------------------------------------------------------

# Example: Processing a returned error code (2)
file_extension="*.bla"

ls -l $file_extension 2> /dev/null

if [ $? -eq 2 ];
then
	echo "$file_extension not found"
	exit 1
fi

