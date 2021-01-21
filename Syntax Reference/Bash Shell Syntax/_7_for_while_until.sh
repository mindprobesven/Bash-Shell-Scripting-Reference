#!/bin/bash

# For, while, until loops
# -----------------------------------------------------------

array="0 1 2 3 4 5"

for i in $array
do
	echo $i
done

# -------------------------------

while true;
do
	echo "Hello"
	break
done

counter=0
while [ $counter -lt 3 ]
do
	echo $counter
	let counter+=1
done

# -------------------------------

counter=3
until [ $counter -eq 0 ]
do
	echo $counter
	let counter-=1
done
