#!/bin/bash

# awk - The stream editor
# ----------------------------------------------------------------------

# Selecting fields
# ----------------
# $1, $2, $3, print columns 1, 2 and 3 in the output
ls -la | awk '{print $3 $5 $9}'
echo

ls -la | awk '{print $0}'
echo

# Formatting fields
# ------------------
ls -lh | awk '{print "File: " $9 " = Size: " $5}'
echo

# Example: Prints top 3 partitions space used
# sort -rnk 5 = Sort 5th column numeric and in reversed order
# head -3 = Only the first 3 lines
df -h | sort -rnk 5 | head -3 | \
	awk '{print "Partition " $6 "\t: " $5 " used"}'
echo

# List sorted only the percentage integer values of partition space used
df -h | awk '{print $5}' | grep -v Use | cut -d "%" -f1 | sort -nr
echo

# Regular expressions
# -------------------
# List only sda disk devices
df -h | awk '/dev\/sda/ { print $6 "\t: " $5  }'
echo

# List files ending in .conf and starting either with a or x
ls -l /etc | awk '/\<(a|x).*\.conf$/ { print $9 }'
echo

