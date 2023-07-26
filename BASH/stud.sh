#!/bin/bash

for user in /home/stud*; do
    username=$(basename "$user")
    new_home="/usr/$username"
    new_password="${username}123"

    # Change home folder
    usermod -d "$new_home" "$username"

    # Change password
    echo "$new_password" | passwd --stdin "$username"
done

