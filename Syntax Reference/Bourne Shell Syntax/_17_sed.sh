#!/bin/sh

# SED
# -----------------------------------------------------------------------
# Stream editor for filtering and transforming text

# Prints the first 3 lines and uses -n to avoid repetition of line printing
cat /etc/passwd | sed -n '1,3p'
echo

# This deletes the third line
cat /etc/passwd | sed -n '1,3p' | sed '3, 3d'
echo

# This substitutes text
cat /etc/passwd | sed -n '1,3p' | sed 's/root/amroot/'
echo

# This replaces text with an empty space. The g replaces all matches
cat /etc/passwd | sed -n '1,3p' | sed 's/root//g'
echo

# The p option along with -n prints all matching lines
cat /etc/passwd | sed -n '1,3p' | sed -n '/root/p'
echo

# This deletes all lines ending with nologin
cat /etc/passwd | sed -n '1,10p' | sed '/nologin$/d'