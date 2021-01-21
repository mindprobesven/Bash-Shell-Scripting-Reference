#!/bin/bash

# Functions
# ------------------------------------------------------------

# Including a module and calling its function hello_world
source "./modules/utils.sh"
hello_world

# Creating a function with arguments and return value
function total_files {
	find $1 -type f | wc -l
	return 10
}

total_files $HOME
# return value of the function
ret=$?
echo $ret

# Returns the output of the find command
ret=$( total_files $HOME )
echo $ret
