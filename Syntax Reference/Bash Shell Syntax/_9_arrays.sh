#!/bin/bash

# Arrays
# ------------------------------------------------------------

# Declaration
array_1[0]=5
array_1[1]="Haxor"
echo ${array_1[*]}
echo "Array array_1 length: ${#array_1[*]}"

array_2=(5 "Haxor")
echo ${array_2[*]}
echo "Array array_2 length: ${#array_2[*]}"

array_3=( {1..5} )
echo ${array_3[*]}
echo "Array array_3 length: ${#array_3[*]}"

array_4=( $(seq 1 5) )
echo ${array_4[*]}
echo "Array array_4 length: ${#array_4[*]}"

# Delete array variables
array_5=( $(seq 1 5) )
unset array_5[1]
echo ${array_5[*]}

# Destroy array
array_6=( $(seq 1 5) )
unset array_6
echo ${array_6[*]}

# Iterate array
array_7=( $(seq 1 5) )

for i in ${array_7[*]}
do
	echo $i
done

