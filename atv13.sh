#!/bin/bash
clear
echo -e '\033[01;32m== Script 13 ==
Informa qual o Shell mais utilizado pelo sistema\033[00;37m'


declare -A shells

for i in $(cut -d: -f 7 /etc/passwd)
do
    let shells[$i]++
done

MaisUsado=($(xargs -n 1 <<< ${!shells[@]} | sort -nr | head -1))
USUARIOS=($(xargs -n 1 <<< ${shells[@]} | sort -nr | head -1))
echo "$MaisUsado -> $USUARIOS usuários"

echo -e '\033[01;32mAperte ENTER para continuar...\033[00;37m'
read && clear