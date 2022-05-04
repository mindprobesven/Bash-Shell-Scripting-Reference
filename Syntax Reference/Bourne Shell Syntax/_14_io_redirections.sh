#!/bin/sh

# Input / output redirections
# -----------------------------------------------------------------------

# Output redirection
# ------------------------------------

# Redirect standard output to a file
who > ./files/users.txt
cat ./files/users.txt

echo "Appending a line to users.txt" >> ./files/users.txt

# Input redirection
# -----------------------------------

# Redirect file data to standard input
wc -l < ./files/users.txt

# Here document
# -----------------------------------
# Used to redirect input into an interactive shell script program

filename='./files/generated.txt'

vim -n "$filename" << COMMAND
i
This vim file was automatically created from a shell script

:wq
COMMAND

# Discard the output
# ----------------------------------
# To not print output to the screen, redirect to /dev/null
# command > /dev/null
echo "Test" > /dev/null
