 #!/bin/bash

# echo "file initiated"

NUM=1

while [ $NUM -lt 12 ] ; do
	# echo $NUM
	if [ $NUM -gt 9 ] ; then
		DRP="dl"$NUM
	else
		DRP="dl0"$NUM
	fi
	# echo $DRP
	ping -q -c 1 $DRP
	if [ $? = 0 ] ; then
		echo $DRP" : alive"
	else
		echo $DRP" : dead"
	fi
	let NUM=$NUM+1
done

exit 0

