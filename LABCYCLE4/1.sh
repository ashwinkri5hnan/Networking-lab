#!/bin/bash
if [ $# -eq 0 ]; then
	echo "Please provide a username."
	exit 1
fi
username=$1
last_login=$(last "$username")
failed_login=$(echo "$last_login" | grep "fail\|Fail")
output_file="log_details_$username.txt"
echo "Last login details for : $username">"$output_file"
echo "$last_login">>$output_file
echo "">>$output_file
echo "failed login">>$output_file
echo "$failed_login">>$output_file
