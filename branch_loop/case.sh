#!/bin/bash
# you can use a case command in place of lengthy if/elif/else statements
case ${USER} in
	anthony | maya)
		echo "Welcome, ${USER}"
		echo "Please enjoy your visit";;
	testing)
		echo "Special testing account";;
	dotty | peanut)
		echo "Woof! Woof! Woof!";;
	*)
		echo "Sorry, you are not allowed here";;
esac
