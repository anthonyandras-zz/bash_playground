#!/bin/bash
####
# Basic for loop
####
for test in Chicago Columbus Austin Irving Boulder; do
	echo "The next city is ${test}"
done
test=Tokyo
echo "Wait, we are now visiting ${test}"

list="Chicago Columbus Austin Irving Boulder"
for city in ${list}; do
	echo "Have you ever been to ${city}?"
done

file="states"
for state in $(cat ${file})
do
	echo "Visit beautiful ${state}"
done

# temporarily change the IFS env variable to alter delimiters
file="states_csv"
IFS=","
for state in $(cat ${file})
do
	echo "Try visiting beautiful ${state}"
done

for file in /home/anthony/*
do
	if [ -d "${file}" ]; then
		echo "${file} is a directory"
	elif [ -f "${file}" ]; then # enclosing ${file} in quotes prevents issues with spaces
		echo "${file} is a file"
	fi
done

var1=10
while [ ${var1} -gt 0 ]
do
	echo ${var1}
	var1=$[ ${var1} - 1 ]
done

for var1 in 1 2 3 4 5 6 7 8 9 10
do
	if [ ${var1} -eq 5 ]
	then
		break
	fi
	echo "Iteration number: ${var1}"
done
echo "The for loop is completed"
