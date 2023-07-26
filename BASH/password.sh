#! /bin/bash
echo "Enter the password"
read password
if [ ${#password} -gt 8 ];
then echo "Strong"
else
echo "weak"
fi
