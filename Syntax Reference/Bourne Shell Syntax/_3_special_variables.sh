#!/bin/sh

# Special Variables
# ---------------------------------------------------------------
# Run this script with arguments added
# ./_3_special_variables.sh Sven Kohn 40

echo "PID of current shell $$" 
echo "File Name $0"
echo "1st param: $1"
echo "2nd param: $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Exit status of previous command: $?"
echo "Total number of parameters: $#"
echo "Exit status of previous command: $?"

# $* = an array of all arguments
for TOKEN in $*
do
	echo $TOKEN
done

# check if the length of the argument is zero (-z) or non-zero (-n)
# More flags like -z in 'man bash'
if [ -n $1 ]
then
	echo "$?: First argument is non-zero length"
fi

