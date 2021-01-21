# Basic operators
# ------------------------------------------------------------------------

# Arithmetic
# --------------------------
n1=2
n2=4
addition=`expr $n1 + $n2`

echo $addition		# Output: 6

echo `expr [$n1 == $n2]`	# Output: 0

# Relational
# --------------------------
if [ $n1 -gt $n2 ]
then
	echo "Greater"
else
	echo "Not greater"
fi

# Boolean operators
# --------------------------
if [ $n1 != $n2 ]
then
	echo "Not equal"
fi

if [ $n1 -gt 1 -a $n1 -lt 10 ]
then
	echo "Greater than 1 and less than 10"
fi

if [ $n1 -gt 0 -o $n1 -gt 1 ]
then
	echo "Greater than 0 or greater than 1"
fi

# String operators
# --------------------------
a="abc"
b="efg"

if [ $a = $b ]
then
	echo "Equal"
else
	echo "Different"
fi

# Checks if string size is zero
# if [ -z $a ]

# Checks if string size is non-zero
# if [ -n $a ]

# Checks if string is empty
# if [ $a ]

# File operators
# ---------------------------
file="./_5_basic_operators.sh"

if [ -r $file ]
then
	echo "File has read access"
else
	echo "File does not have read access"
fi

# File has write permissions
# if [ -w $file ]

# File has execute permissions
# if [ -x $file ]

# File is an ordinary file
# if [ -f $file ]

# File is a directory
# if [ -d $file ]

# File size is not zero
# if [ -s $file ]

# File exist
# if [ -e $file ]
