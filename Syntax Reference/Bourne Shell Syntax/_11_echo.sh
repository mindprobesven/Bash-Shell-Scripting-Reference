#!/bin/sh

# Echo
# ------------------------------------------------------------------------

echo "This is sentence 1\nThis is sentence 2"

echo "\tThis is tabbed"

echo "With a backslash \\"

a=5

while [ $a -gt 0 ]
do
	# Disables new line
	echo -n $a
	a=`expr $a - 1`
done

echo 		# New line

echo 'Text with metacharacters $"#!'