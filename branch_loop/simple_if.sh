#!/bin/bash
if pwd
then
	echo "It worked"
fi

if IamNotReal
then
	echo "It worked"
else
	echo "It did not work"
fi

if pwd; then
	echo "It worked inline"
fi
