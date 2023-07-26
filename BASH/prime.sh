#!/bin/bash
echo "Enter the lower limit"
read i
echo "Enter the upper limit"
read limit
echo ""
echo "The prime numbers between $i and $limit are:"
while [ $i -le $limit ]
do 
	flag=1
	j=2
	while [ $j -lt $i ]
	do
		prime=$(( $i % $j ))
	if [ $prime -eq 0 ]
	then
		flag=0
		break
	fi
	j=$(( $j+1 ))
	done
	if [ $flag -eq 1 ]
	then
		echo "$i"
	fi
i=$(( $i+1 ))
done
