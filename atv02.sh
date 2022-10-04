#!/bin/bash
read USUARIO
USUARIO=`echo $USUARIO|tr [A-Z] [a-z]`
if grep $USUARIO /etc/passwd > /dev/null
then
	echo "$USUARIO é um usuário que existe."
else
	echo "não é um usuário."
fi
