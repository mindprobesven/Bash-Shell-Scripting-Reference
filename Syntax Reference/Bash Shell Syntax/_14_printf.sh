#!/bin/bash

# printf
# ----------------------------------------------------------------------

printf "Username is %s\n" $USER

# Output wtih no spaces
printf "%s" "Hello" "Haxor" "Sven"

# Output single-line with spaces
printf "%s %s %s\n" "Hello" "Haxor" "Sven"

# Output list with line breaks
printf "%s\n" "Hello" "Haxor" "Sven"

# Output columns with custom width right-aligned
printf "%15s %10s %20s\n" "Hello" "Haxor" "Sven"

# Output columns with custom width left-aligned
printf "%15s %-10s %-20s\n" "Hello" "Haxor" "Sven"

# Output * character 40 times
printf "*%.0s" $(seq 1 40); echo

# Output Unicode character 40 times
printf "\u26a1%.0s" $(seq 1 40); echo

# Output 2 decimal places
printf "%0.2f\n" 45,12345


