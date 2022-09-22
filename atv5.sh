#!/bin/bash
ARCH="$1"
if [ -f $ARCH ];
then
	SIZE=$(find $ARCH -printf %s)
	echo "existe e tem $ARCH"
else
	echo "Nao existe"
fi