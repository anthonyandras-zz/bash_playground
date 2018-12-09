#!/bin/bash
# Using floating point numbers in test evaluations
# This does not work as bash only supports integer evaluations.
value=5.555
echo "The test value is ${value}"
if [ ${value} -gt 5 ]
then 
	echo "The test value ${value1} is greater than 5"
fi

