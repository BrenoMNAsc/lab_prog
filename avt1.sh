#!/bin/bash
X="$1"
Y="$2"
echo "Soma dos numeros: $(($X+$Y))"
echo "Maior: "
if [ "$X" -gt "$Y" ]
then
	echo "$X"
else
	echo "$Y"
fi
