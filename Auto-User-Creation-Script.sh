#!/bin/bash
USER_LIST="users.txt"

while read user; do
    sudo useradd -m $user
    echo "User $user created!"
done < $USER_LIST
