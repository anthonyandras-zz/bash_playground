#!/bin/bash
# testing signal trapping
trap "echo ' Sorry! I have trapped Ctrl-C'" SIGINT
trap "echo Goodbye...." EXIT
echo "This is a trapped script"
count=1
while [ ${count} -le 10 ]
do
	echo "Loop #${count}"
	sleep 2
	count=$[ ${count} + 1 ]
done
trap -- SIGINT
echo "I just removed the trap on SIGINT"
count=1
while [ ${count} -le 5 ]
do
	echo "Second Loop #${count}"
	sleep 1
	count=$[ ${count} + 1 ]
done
echo "This is the end of the test script"
