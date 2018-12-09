#!/bin/bash
# testing the read command
#
echo -n "Enter your name: "
read name
echo "Hello ${name}, welcome to my program. "
#

# testing the read -p option
# the -p option will save multiple variables off when multiple values are provided
read -p "Please enter your age: " age
days=$[ ${age} * 365 ]
echo "That makes you over ${days} old! "

# testing the REPLY environment variable
read -p "Enter your name: "
echo
echo Hello ${REPLY}, welcome to my program.
