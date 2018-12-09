#!/bin/bash
# Demonstrates how to grab the script name that is being executed
name=$(basename $0)
echo
echo The script name is: ${name}
