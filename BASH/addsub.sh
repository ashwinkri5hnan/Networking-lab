#! /bin/bash
echo "Enter two number to do the operations:"
read num1
read num2
echo "Enter your choice(1 for addition,2 for subtraction,3 for multiplication and 4 for division):"
while [[ $choice != "5"  ]]
do
echo "Enter your choice:"
read choice

case $choice in
	1)
	sum=$(($num1 + $num2))
	echo "The sum is $sum"
	;;
	2)
	sub=$(($num1 - $num2))
	echo "The subtraction is $sub"
	;;
	3)
	mul=$(($num1 * $num2))
	echo "$mul"
	;;
	4)
	div=$(($num1 / $num2))
	echo "$div"
	;;
	*)
	echo "invalid option"
	;;
esac
done
