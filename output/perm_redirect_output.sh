#!/bin/bash
# redirecting all output to a file
exec 1> testout
echo "This is a test of redirecting all output"
echo "from a script to another file."
echo "without having to redirect every individual line"
exec 2> testerror
echo "These are all errors" >&2
echo "that are being redirected mid-script" >&2
echo "you can easily reroute all of this output" >&2
echo "using exec" >&2
