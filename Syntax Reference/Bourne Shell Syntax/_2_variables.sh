#!/bin/sh

# Variables
# --------------------------------------------------------------------

NAME="Haxor Freak"
AGE=40
MARRIED=TRUE

echo "Status: $NAME, $AGE, $MARRIED"

# Read-only Variables
# --------------------------------------------------------------------

readonly NAME
NAME="Sven"
# Output
# NAME: is read only

# Unsetting Variables
# --------------------------------------------------------------------
unset AGE
# Output: Does not print anything
echo $AGE

