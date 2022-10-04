#!/bin/bash
clear
echo -e '\033[01;32m== Script 05 ==
Recebe um arquivo e verifica se ele existe, se existir, imprime seu tamanho em bytes\033[00;37m'

read ARCH
if [ -f $ARCH ];
then
	SIZE=$(find $ARCH -printf %s)
	echo "existe e tem $SIZE"
else
	echo "Não existe"
fi

echo -e '\033[01;32mAperte ENTER para continuar...\033[00;37m'
read && clear