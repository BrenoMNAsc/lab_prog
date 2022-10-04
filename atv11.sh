#!/bin/bash
clear
echo -e '\033[01;32m== Script 11 ==
Recebe dois números e a operação que sera realizada entre eles\033[00;37m'
echo 'Digite o primeiro número'
read NUM1
echo 'Digite a operação a ser realizada (+, -, x, /, *)'
read OP
echo 'Digite o segundo número'
read NUM2
case $OP in
+) echo $(($NUM1+$NUM2)) ;;
-) echo $(($NUM1-$NUM2)) ;;
x) echo $(($NUM1*$NUM2)) ;;
/) echo $(($NUM1/$NUM2)) ;;
*) ehco "opção invalida, tente: +, -, x ou /"
esac
echo -e '\033[01;32mAperte ENTER para continuar...\033[00;37m'
read && clear
