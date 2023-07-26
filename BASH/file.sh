#! /bin/bash


echo "Enter the name of the file:"
read name
if [ ! -f $name ];
	then echo "File not found"
	exit 1
fi
echo "Converting lower case to upper case"
tr '[a-z]' '[A-Z]' <$name
echo "The number of lines are:"
numberoflines= wc --lines < $name
echo "The number of words are:"
numberofwords= wc --word < $name
for i in $(cat $name)
do
	echo $i >> "TEMP"
done
echo "Sorting words in ascending order:"
echo "$(sort -r "TEMP" )"
