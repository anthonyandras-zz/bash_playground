#!/bin/bash
# using select in the menu
# not as polished as the manual approach, but easier
function diskspace {
	clear
	df -k
}
function whoseon {
	clear
	who
}
function memusage {
	clear
	cat /proc/meminfo
}
PS3="Enter option: "
select option in "Display disk space" "Display logged on users" "Display memory usage" "Exit Program"
do
	case ${option} in
		"Exit Program")
			break ;;
		"Display disk space")
			diskspace ;;
		"Display logged on users")
			whoseon ;;
		"Display memory usage")
			memusage ;;
		*)
			clear
			echo "Sorry, wrong selection";;
	esac
done
clear
