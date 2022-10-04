#!/bin/bash
NUM="$1"
i=0
while [ $i -ne $(($NUM+1)) ]
do
    if [ $(($i%2)) -eq 0 ]
    then 
        echo "$i, "
    fi
    ((i=i+1))
done