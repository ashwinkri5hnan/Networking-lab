#! /bin/bash

isPrime(){
	
	prime=0
	lp=$1
	echo $lp
	for (( i=2; i<$lp; i++ ))
	do
		echo $i,$lp
		if [ $(($lp%$i)) -eq 0 ];
		then prime=1
		     break
		fi
	done
	echo $prime
	
}


#echo "Enter the lower limit : "
#read lower

#echo "Enter the upper limit : "
#read upper

lower=3
upper=5

for (( i=$lower; i<=$upper; i++ ))
do	
	
	isValid=$( isPrime $i )
	if [ isValid == 1 ];
	then echo $i
	fi
done

		


