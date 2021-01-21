# Arrays
# ------------------------------------------------------------------------

NAME[0]="Sven"
NAME[1]="Tom"
echo ${NAME[0]}

ARRAY_1="0 1 2 3"

# Access all items in an array
echo ${ARRAY_1[*]}

for item in ${ARRAY_1[*]}
do
	echo $item
done

