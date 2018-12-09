#!/bin/bash

jump_directory=/home/arthur

if [ -d ${jump_directory} ]; then
	echo "The ${jump_directory} directory already exists"
	cd ${jump_directory}
	ls
else
	echo "The ${jump_directory} directory does not exist"
fi

location=$HOME
file_name="sentinel"

if [ -e ${location} ]; then
	echo "OK on the ${location} directory."
	echo "Now checking on the file, ${file_name}."
	if [ -e ${location}/${file_name} ]; then
		echo "OK on the filename"
		echo "Updating current date..."
		date >> ${location}/${file_name}
	else
		echo "File does not exist"
		echo "Nothing to update"
	fi
else
	echo "The ${location} directory does not exist."
	echo "Nothing to update"
fi

#item_name=$HOME
item_name=$HOME/sentinel
echo
echo "The item being checked: ${item_name}"
echo

if [ -e ${item_name} ]; then
	echo "The item, ${item_name}, does exist."
	echo "But is it a file?"
	echo
	if [ -f ${item_name} ]; then
		echo "Yes, ${item_name} is a file."
	else
		echo "No, ${item_name} is not a file."
	fi
else
	echo "The item, ${item_name}, does not exist."
	echo "Nothing to update."
fi

####
# testing if you can read a file
####
pwfile=/etc/shadow

if [ -f ${pwfile} ]; then
	if [ -r ${pwfile} ]; then
		tail ${pwfile}
	else
		echo "Sorry, I am unable to read the ${pwfile} file."
	fi
else
	echo "Sorry, the file ${file} does not exist"
fi

#####
# testing to see if a file is empty
#####
file_name=$HOME/sentinel
if [ -f ${file_name} ]; then
	if [ -s ${file_name} ]; then
		echo "The ${file_name} file exists and has data in it."
		echo "Will not remove this file."
	else
		echo "The ${file_name} file exists, but is empty."
		echo "Deleting empty file..."
		rm ${file_name}
	fi
else
	"File, ${file_name}, does not exist."
fi

#####
# testing to see if you can write to a file
####
item_name=$HOME/sentinel
echo
echo "The item being checked: ${item_name}"
if [ -w ${item_name} ]; then
	echo "Writing the current time to ${item_name}"
	date +%H%M >> ${item_name}
else
	echo "Unable to write to ${item_name}"
fi

#####
# testing to see if you can run a file
#####
if [ -x string_test.sh ]; then
	echo "You can run the script."
else
	echo "Sorry, you are unable to execute the script"
fi

####
# testing to see if you are the owner of a file
####
if [ -O /etc/passwd ]; then
	echo "You are the owner of /etc/passwd"
else
	echo "Sorry, you are not the owner of /etc/passwd"
fi

####
# checking group membership
###
if [ -G $HOME/testing ]; then
	echo "You are in the same group as the file"
else
	echo "The file is not owned by your group"
fi

####
# checking creation date membership
####
if [ file_test.sh -nt string_test.sh ]
then
	echo "The file_test.sh file is newer than string_test.sh"
else
	echo "The string_test.sh file is newer than file_test.sh"
fi

if [ file_test.sh -ot string_test.sh ]
then
	echo "The file_test.sh file is older than string_test.sh"
else
	echo "The string_test.sh file is older than file_test.sh"
fi

