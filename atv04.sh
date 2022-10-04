#!/bin/bash
clear
echo -e '\033[01;32m== Script 04 ==
Recebe um número e imprime todos os números pares de 0 ate esse número\033[00;37m'

read NUM
i=0
while [ $i -ne $(($NUM+1)) ]
do
    if [ $(($i%2)) -eq 0 ]
    then 
        echo "$i, "
    fi
    ((i=i+1))
done

echo -e '\033[01;32mAperte ENTER para continuar...\033[00;37m'
read && clear