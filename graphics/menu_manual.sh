#!/bin/bash
function diskspace {
	clear
	df -k
}
function users {
	clear
	who
}
function memory_usage {
	clear
	cat /proc/meminfo
}
function menu {
	clear
	echo
	echo -e "\t\tSys Admin Menu\n"
	echo -e "\t1. Display disk space"
	echo -e "\t2. Display logged on users"
	echo -e "\t3. Display memory usage"
	echo -e "\t4. Exit program\n\n"
	echo -en "\t\tEnter option: "
	read -n 1 option
}

while [ 1 ]
do
	menu
	case ${option} in
		4)
			break ;;
		1)
			diskspace ;;
		2)
			users ;;
		3)
			memory_usage ;;
		*)
			clear
			echo "Sorry, wrong selection" ;;
	esac
	echo -en "\n\n\t\t\tHit any key to continue"
	read -n 1 line
done
clear

