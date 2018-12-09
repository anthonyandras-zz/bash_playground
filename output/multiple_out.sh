#!/bin/bash
# using the tee command for logging
tempfile=multiout
echo "This is the start of the test" | tee ${tempfile}
echo "This is the second line of the test" | tee -a ${tempfile} # appends to tempfile
echo "This is the end of the test" | tee -a ${tempfile} 
