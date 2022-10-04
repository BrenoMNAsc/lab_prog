#!/bin/bash
clear
echo -e '\033[01;32m== Script 09 ==
Recebe uma lista de palavras e as ordena alfabeticamente\033[00;37m'
echo 'Digite a lista de palavras separadas por espaço'
read TEXT
list=$(sed 's/ /\n/g' <<< "$TEXT")
INORDER=($(printf '%s\n' ${list[@]} | sort))
echo ${INORDER[@]}|sed 's/ /\n/g'

echo -e '\033[01;32mAperte ENTER para continuar...\033[00;37m'
read && clear