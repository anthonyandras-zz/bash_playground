#!/bin/bash
# string comparison
testuser=$1
if [ ${USER} = ${testuser} ]; then
	echo "Welcome ${testuser}"
fi

if [ ${USER} != ${testuser} ]; then
	echo "This is not ${testuser}"
fi

val1=baseball
val2=hockey

if [ ${val1} \> ${val2} ] 
then
	echo "${val1} is greater than ${val2}"
else
	echo "${val1} is less than ${val2}"
fi

val1=Testing
val2=testing
if [ ${val1} \> ${val2} ]; then
	echo "${val1} is greater than ${val2}"
else
	echo "${val1} is less than ${val2}"
fi

###
# testing string length
###
val1=testing
val2=''

if [ -n ${val1} ]; then # non-zero length
	echo "The string '${val1}' is not empty"
else
	echo "The string '${val1}' is empty"
fi

if [ -z ${val2} ]; then # zero length
	echo "The string '${val2}' is empty"
else
	echo "The string '${val2}' is not empty"
fi

if [ -z ${val3} ]; then # zero length
	echo "The string '${val3}' is empty"
else
	echo "The string '${val3}' is not empty"
fi
