#! /bin/bash

echo "Enter a number:"

read  number

s=0

start=$number

while [ $number -gt 0 ];
do

r=$((number%10))

s=$((s+(r*r*r)))

number=$((number/10))
	
done

if [ $start == $s ];
	then echo "True"
else
	echo "False"
fi
