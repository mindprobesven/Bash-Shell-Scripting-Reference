#!/bin/sh

# Functions
# ----------------------------------------------------------------------

hello () {
	echo "Hello, $1 age $2"
	return 10
}

hello Sven 40
ret=$?

echo "Returned: $ret"

# Function call from prompt
# -----------------------------------
# You can put function definitions inside your .profile and then use them
# at the command prompt
#
# You can execute a script file in the current shell with
# . _16_functions.sh
# and make the function callable via the shell command prompt
#
# To remove a function definition from the shell
# unset -f function_name
