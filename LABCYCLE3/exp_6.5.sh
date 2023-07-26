#! /bin/bash

echo "Enter the password"

read passw

if [ ${#passw} -gt 8 ];
	then echo "Strong"
else
	echo "Weak Password"
fi

