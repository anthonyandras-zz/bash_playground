#!/bin/bash
# getting the number of parameters supplied
echo There were $# parameters supplied.

if [ $# -ne 2 ]
then
	echo
	echo Usage: special_params a b
	echo
else
	total=$[ $1 + $2 ]
	echo
	echo The total is ${total}
	echo
fi

# Grabbing the last parameter
params=$#
echo
echo The total count of parameters are ${params}
echo The last parameter is ${!#}
echo

# testing $* and $@
echo
echo "Using the \$* method: $*"
echo
echo "Using the \$@ method: $@"

