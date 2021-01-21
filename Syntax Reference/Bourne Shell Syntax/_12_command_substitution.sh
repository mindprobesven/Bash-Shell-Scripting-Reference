#!/bin/sh

# Command substitution
# ------------------------------------------------------------------------

DATE=`date`
echo "Date is $DATE"

USERS=`who | wc -l`
echo "Number of logged in users: $USERS"

UP=`date ; uptime`
echo "Uptime is $UP"

