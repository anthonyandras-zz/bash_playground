#!/bin/bash
# using an alternative file descriptor for I/O redirection
exec 3>testoutput
echo "This should dispaly on the monitor"
echo "and this should be stored in teh file" >&3
echo "Then this hsould be back on the monitor"

# storing STDOUT, then coming back to it
exec 3>&1
exec 1>testoutput
echo "This should store in the output file"
echo "along with this"
exec 1>&3
echo "Now things should be back to normal"

# redirecting input file descriptors
exec 6<&0
exec 0< testfile
count=1
while read line
do
	echo "Line ${count}: ${line}"
	count=$[ ${count} + 1 ]
done
exec 0<&6
read -p "Are you done now? " answer
case ${answer} in
	Y|y) echo "Goodbye";;
	N|n) echo "Sorry, this is the end.";;
esac

# testing input/output file descriptors
exec 3<> testfile
read line <&3
echo "Read: ${line}"
echo "This is a test line" >&3

# testing closing file descriptors
exec 3> testfile
echo "This is a test line of data" >&3
exec 3>&-
echo "This won't work" >&3

