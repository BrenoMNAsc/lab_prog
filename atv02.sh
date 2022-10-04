#!/bin/bash
clear
echo -e '\033[01;32m== Script 02 ==
Recebe um usuário e verifica se ele é um usuário válido do sistema\033[00;37m'

read USUARIO

USUARIO=`echo $USUARIO|tr [A-Z] [a-z]`
if grep $USUARIO /etc/passwd > /dev/null
then
	echo "$USUARIO é um usuário que existe."
else
	echo "não é um usuário."
fi

echo -e '\033[01;32mAperte ENTER para continuar...\033[00;37m'
read && clear