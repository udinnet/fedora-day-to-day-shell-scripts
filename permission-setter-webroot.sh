#!/bin/bash

#if [ $# !-eq 1 ] ; then
#	echo 'The usage is '$0' [directory]'
#	exit 1
#fi
	 
for i in $(find $1 -type d); do
	chmod 775 $i
	echo "modifying $i to 775"
done

for i in $(find $1 -type f); do
	chmod 664 $i
	echo "modifying $i to 664"
done

