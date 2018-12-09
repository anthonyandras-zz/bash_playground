#!/bin/bash
# using double parens for math functions
val=10
if (( ${val} ** 2 > 90 ))
then
	(( val2 = ${val} ** 2 ))
	echo "The square of ${val} is ${val2}"
fi

# using double brackets for string comparison / pattern matching
# this is not supported by all shells, bash does
if [[ ${USER} == a* ]]; then
	echo "Hello ${USER}"
else
	echo "Sorry, I do not know you"
fi
