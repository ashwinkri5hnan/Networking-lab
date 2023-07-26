
#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Please provide a username"
	exit 1
fi

username=$1
last_login=$(last "$username")

failed_login=$( echo "$last_login" | grep "fail\/Fail")

out_put_file="log_details_$username.txt"

echo "Last login details for : $username" >"$out_put_file"

echo "$last_login" >> $out_put_file

echo "">>$out_put_file

echo "Failed login">>$out_put_file

echo "$failed_login">>$out_put_file


