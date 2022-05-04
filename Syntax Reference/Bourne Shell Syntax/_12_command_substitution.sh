#!/bin/sh

# Command substitution
# ------------------------------------------------------------------------

DATE=`date`
echo "Date is $DATE"

USERS=`who | wc -l`
echo "Number of logged in users: $USERS"

# The ; puts two or more commands on the same line. Commands are executed
# sequentially.
UP=`date ; uptime`
echo "Uptime is $UP"

