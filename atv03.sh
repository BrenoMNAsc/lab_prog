#!/bin/bash
clear
echo -e '\033[01;32m== Script 03 ==
Recebe um diretório e lista seus arquivos e diretórios um a um. Se for diretório, escreve (dir) ao lado do diretório\033[00;37m'

read DIR
ls -l $DIR | while read i; do
	if [ ${i:0:1} = "d" ];
	then
		echo $i | awk '{print $9 " (dir)"}'
	else
		echo $i | awk '{print $9}'
	fi
done

echo -e '\033[01;32mAperte ENTER para continuar...\033[00;37m'
read && clear