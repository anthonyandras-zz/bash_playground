#!/bin/bash
# testing=`date`
# echo "The date and time are: " ${testing}

# copy the /usr/bin directory listening to a log file
today=$(date +%y%m%d)
ls /usr/bin -al > log.${today}
