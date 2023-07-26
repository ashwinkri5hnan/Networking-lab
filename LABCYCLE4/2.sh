#!/bin/bash
if [ $# -eq 0 ]; then
	echo "Please enter a process id as a command line argument"
	exit 1
fi
pid=$1
if ! ps -p "$pid">/dev/null;then
	echo "Process with ID $pid does not exist."
	exit 1
fi

echo "Process ID:$pid"
echo "Process detailes:"
ps -p "$pid" -o pid,ppid,user,%cpu,%mem,vsz,rss,tty,stat,start,time,cmd
