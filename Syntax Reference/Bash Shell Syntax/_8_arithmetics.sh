#!/bin/bash

# Arithmetics
# --------------------------------------------------------------

# Arithmetic expansion
num_a=5
num_b=10

sum=$[$num_a + $num_b]
echo $sum

sum=$((20 + 50))
echo $sum

# expr command
expr 5 + 5

sum=$(expr 2 + 2)
echo $sum

# let command
let a=20+80
echo $a

# bc command for decimals
echo 'scale=2;8.5 / 2.3' | bc
squareroot=$( echo 'scale=50; sqrt(50)' | bc)
echo $squareroot
