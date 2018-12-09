#!/bin/bash

testuser=$1
if grep -i ${testuser} /etc/passwd
then
	echo "This is my first command"
	echo "This is my second command"
	echo "I can even put other commands besides echo:"
	ls -al /home/${testuser}/.b*
else
	echo "The user ${testuser} does not exist on our system."
	if ls -d /home/${testuser}
	then
		echo "However, ${testuser} has a directory."
	fi
fi

# note that else if are done with elif
