#!/bin/bash
# using a function n a script
function func1 {
	echo "This is an example of a function"
}

count=1
while [ ${count} -le 5 ]
do
	func1
	count=$[ ${count} + 1 ]
done
echo "This is the end of the loop"
func1
echo "This is now the end of the script"

# passing parameters to a function
function addem {
	if [ $# -eq 0 ] || [ $# -gt 2 ]
	then
		echo -1
	elif [ $# -eq 1 ]
	then
		echo $[ $1 + $1 ]
	else
		echo $[ $1 + $2 ]
	fi
}
echo -n "Adding 10 and 15: "
value=$(addem 10 15)
echo ${value}
echo -n "Lets try adding just one number: "
value=$(addem 10)
echo ${value}
echo -n "Now try adding no numbers: "
value=$(addem)
echo ${value}
echo -n "Finally, try adding three numbers: "
value=$(addem 10 15 20)
echo ${value}

# demonstrating local variables
function func2 {
	local temp=$[ ${value} + 5 ]
	result=$[ ${temp} * 2 ]
}
temp=4
value=6
func2
echo "The result is ${result}"
if [ ${temp} -gt ${value} ]
then
	echo "temp is larger"
else
	echo "temp is smaller"
fi

# array variable to function test
function addarray {
	local sum=0
	local newarray
	newarray=($(echo "$@"))
	for value in ${newarray[*]}
	do
		sum=$[ ${sum} + ${value} ]
	done
	echo ${sum}
}
myarray=(1 2 3 4 5)
echo "The original array is: ${myarray[*]}"
arg1=$(echo ${myarray[*]})
result=$(addarray ${arg1})
echo "The result is ${result}"
