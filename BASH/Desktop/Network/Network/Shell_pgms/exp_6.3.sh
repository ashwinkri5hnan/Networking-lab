#! /bin/bash

echo "Enter 3 numbers in a row:"

read  number1 number2 number3 


if [ $number1 -gt $number2 ] && [ $number1 -gt $number3 ];
	then echo $number1 " is large"
elif [ $number2 -gt $number3 ] && [ $number2 -gt $number1 ];
	then echo $number2 "is large"
else
	echo $number3 "is large"
fi

