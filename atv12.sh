#!/bin/bash
clear
echo -e '\033[01;32m== Script 12 ==
O script exibe os usuários cadastrados no sistema\033[00;37m'
cat /etc/passwd | sed 's/:/ /g' | awk '{print $1" HOME: ",$6}'
echo -e '\033[01;32mAperte ENTER para continuar...\033[00;37m'
read && clear