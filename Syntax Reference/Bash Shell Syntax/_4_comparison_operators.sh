#!/bin/bash

# Numeric and string comparison operators
# -----------------------------------------------------------

# String comparison
string_a="Haxor"
string_b="Poser"

# Operators: <, >, =, !=
if [ $string_a = $string_b ];
then
	# $? is the return value of the evaluation.
	echo "$?: They are the same"
else
	echo "$?: $string_a and $string_b are not equal"
fi

# Numeric comparison
# Operators: -lt, -gt, -eq, -ne, -le, -ge
num_a=5
num_b=10

if [ $num_a -lt $num_b ];
then
	echo "$?: $num_a is less than $numb_b"
else
	echo "$?: $num_a is not less than $num_b"
fi
