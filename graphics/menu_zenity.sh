#!/bin/bash
# using zenity to create a menu

temp=$(mktemp -t temp.XXXXXX)
temp2=$(mktemp -t temp2.XXXXXX)

function diskspace {
	df -k > ${temp}
	zenity --text-info --title "Disk space" --filename=${temp} --width 750 --height 10
}
function whoseon {
	who > ${temp}
	zenity --text-info --title "Logged in users" --filename=${temp} --width 500 --height 10
}
function memusage {
	cat /proc/meminfo > ${temp}
	zenity --text-info --title "Memory usage" --filename=${temp} --width 300 --height 500
}
while [ 1 ]
do
	zenity --list --radiolist --title "Sys Admin Menu" --column "Select" --column "Menu Item" FALSE "Display Disk Space" FALSE "Display Logged On Users" FALSE "Display Memory Usage" FALSE "Exit" > ${temp2}
	if [ $? -eq 1 ] 
	then
		break
	fi

	selection=$(cat ${temp2})
	case ${selection} in
		"Display Disk Space")
			diskspace ;;
		"Display Logged On Users")
			whoseon ;;
		"Display Memory Usage")
			memusage ;;
		Exit)
			break ;;
		*)
			zenity --info "Sorry, invalid selection"
	esac
done
