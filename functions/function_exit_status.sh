#!/bin/bash
# testing the exit status of a function
func1() {
	# by default, the exit status returned is the exit status of the last executed command
	echo "trying to display a non-existent file"
	#ls -l badfile
}
echo "testing the function: "
func1
echo "The exit status is $?"

# using the return command in a function
function dbl {
	read -p "Enter a value: " value
	echo "doubling the value ${value}"
	return $[ ${value} * 2 ] # bug - exit status must be between 0 - 255
}
echo "The new value is $?"
