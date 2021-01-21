#!/bin/bash

# If then
# -----------------------------------------------------------------------

# Check if file exists
if [ -f "_0_execution.sh"  ]; then echo "$?: Exists"; fi

# Numeric comparison
if [ "1" -gt "0" ]; then echo "$?: Is greater"; else echo "$?: Is not greater"; fi

a=1
if [ $a -gt 0 ]; then echo "$?: Greater"; else echo "$?: Not greater"; fi

if [ $a -gt 0 -a $a -eq 1 ];
then
	echo "$?: True"; 
else 
	echo "$?: False";
fi

# String comparison
if (( (($a - 0)  > 0) && ($a == 1) ));
then
	echo "$?: True"
else
	echo "$?: False"
fi

# [[ prevents word splitting of variable values and expansion
gender="male"
if [[ $gender == m* ]]; then echo "Is male"; fi

# Shorthand TRUE and FALSE
[ -f "_0_execution.sh" ] && (echo "Exists")

[ -f "bla.sh" ] || (echo "Not found")
