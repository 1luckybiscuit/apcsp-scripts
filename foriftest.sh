#!/bin/bash

for file in $HOME ; do
	echo $file
	echo "would you like to view $file? *y/n):"
	read ANS
	if [ $ANS = "y" ] ; then
		cat $file
	fi
done

