#!/bin/bash
clear
echo -e '\033[01;32m== Script 10 ==
Recebe palavras e forma uma lista ordenada alfabeticamente, o script é finalizado ai digitar a palavra "sair"\033[00;37m'
TEXT=""
while :
do
	read NEW
	if [ $NEW = "sair" ]
        then
		break
        else
        	TEXT+="$NEW-"
		TEXT_ARRAY=(${TEXT//"-"/ })
            	TEXT_INORDER=($(printf '%s\n' ${TEXT_ARRAY[@]} | sort))
            	echo ${TEXT_INORDER[@]}
	fi
done
echo -e '\033[01;32mAperte ENTER para continuar...\033[00;37m'
read && clear