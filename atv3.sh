#!/bin/bash
DIR="$1"
ls -l $DIR | while read i; do
	if [ ${i:0:1} = "d" ];
	then
		echo $i | awk '{print $9 " (dir)"}'
	else
		echo $i | awk '{print $9}'
	fi
done