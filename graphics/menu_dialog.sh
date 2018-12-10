#!/bin/bash
# this assumes the dialog library is installed
# sudo apt-get install dialog
# sudo yum install dialog

temp=$(mktemp -t test.XXXXXX)
temp2=$(mktemp -t test2.XXXXXX)

function diskspace {
	df -k > ${temp}
	dialog --textbox ${temp} 20 60
}

function whoseon {
	who > ${temp}
	dialog --textbox ${temp} 20 50
}

function memusage {
	cat /proc/meminfo > ${temp}
	dialog --textbox ${temp} 20 50
}

while [ 1 ]
do
	dialog --menu "Sys Admin Menu" 20 30 10 1 "Display Disk Space" 2 "Display Users" 3 "Display Memory Usage" 0 "Exit" 2> ${temp2}
	if [ $? -eq 1 ]
	then
		break
	fi

	selection=$(cat ${temp2})

	case ${selection} in
		1)
			diskspace ;;
		2)
			whoseon ;;
		3)
			memusage ;;
		0)
			break ;;
		*)
			dialog --msgbox "Sorry, invalid selection" 10 30
	esac
done
rm -f ${temp} 2> /dev/null
rm -rf ${temp2} 2> /dev/null
clear
