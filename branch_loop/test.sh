#!/bin/bash
if test
then
	echo "No expression returns a True"
else
	echo "No expression returns a False"
fi

my_variable="Full"
if test ${my_variable}
then
	echo "The ${my_variable} expression returns a True"
else
	echo "The ${my_variable} expression returns a False"
fi

my_variable=""
if test ${my_variable}
then
	echo "The ${my_variable} expression returns a True"
else
	echo "The ${my_variable} expression returns a False"
fi
