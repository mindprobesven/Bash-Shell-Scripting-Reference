#!/bin/bash

# Variables
# ----------------------------------------------------------

var1="Haxor"
echo $var1

# Single quotes when using special characters
var2='string with special characters $()[]'
echo $var2

# Command substition $()
day=$(date +%A)
echo $day

# Parameter expansion ${}
user=$(whoami)
echo "Hi $user, your home directory is /home/${user}"

# Perform operation $[]
a=2
b=6
sum=$[$a + $b]
echo $sum

# Environment variables can be listed via command 'env'
# ----------------------------------------------------------

# Exporting variables
# ---------------------------------------------------------
# To make a variable an environment variable, the script needs
# to be launched via '. ./script.sh'
export haxor1="Haxor1"

# Declaration
# ---------------------------------------------------------
# -a Array
# -f Function
# -i Int
# -p Display attributes and values
# -r Readonly (Constant)
# -x Mark variable for export (sames as export)

# - Declare an integer variable
declare -i int_var=10

# - Display the attributes and values of a variable
declare -p int_var

# - Display the attr. and values for all variables declared by the system
# declare -p
# declare

# - Re-assigning a string value will not work
int_var="string"
echo $int_var		# Output: 0
declare -p int_var

# - Declare a constant
readonly const_var="Haxor"
const_var="Noob"	# Produces error
