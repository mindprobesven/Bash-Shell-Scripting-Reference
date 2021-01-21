#!/bin/bash

# Script Execution
# -------------------------------------------------------------
# The file command identifies a type of file
# file test.sh

# The file extension .sh is optional, but recommended.

# A script can be executed in several ways:
#
# Does not require setting file execution permissions
# bash test.sh
#
# Requires file execution permissions
# sudo chmod +x test.sh
# ./test.sh
#
# Executing with debug mode enabled
# bash -x test.sh

# Auto-start scripts in a non-login shell (e.g. starting a X terminal when
# a user is already logged in)
# Edit the ~/.bashrc
# Reload the configuration with
# source ~/.bashrc

echo "OK"
