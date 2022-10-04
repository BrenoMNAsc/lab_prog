#!/bin/bash
clear
echo -e '\033[01;32m== Script 01 ==
Recebe dois números, soma os dois e diz qual dos dois é o maior\033[00;37m'

echo 'Digite o primeiro número:'
read X
echo 'Digite o segundo número:'
read Y
echo "Soma dos numeros: $(($X+$Y))"
echo "Maior: "
if [ "$X" -gt "$Y" ]
then
	echo "$X"
else
	echo "$Y"
fi
echo -e '\033[01;32mAperte ENTER para continuar...\033[00;37m'
read && clear