#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Please provide a process ID"
	exit 1
fi

pid=$1

if ! ps -p "$pid";then
	echo "Process with ID $pid does not exit"
	exit 1
fi

echo "Process ID : $pid"
ps -p $pid -o pid,ppid,user,%cpu,%mem,start,time,cmd
