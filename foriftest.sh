#!/bin/bash

echo "this is the for script example"
for file in $HOME ; do
	echo $file
	echo "would you like to view $file? *y/n):"
	read ANS
	if [ $ANS = "y" ] ; then
		cat $file
	fi
done

