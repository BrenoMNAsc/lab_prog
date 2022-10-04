#!/bin/bash
clear
while true
do
clear
echo -e '\033[01;32m
  __  __   _____   _   _   _   _
 |  \/  | | ____| | \ | | | | | |
 | |\/| | |  _|   |  \| | | | | |
 | |  | | | |___  | |\  | | |_| |
 |_|  |_| |_____| |_| \_|  \___/
  \033[00;37m'

echo -e '\033[01;32mDigite a questão que deseja:
Digite com dois digitos
01, 02, 03, ..., 13\033[00;37m
\033[01;31mou digite 0 para sair\033[00;37m'

read QUESTAO

if [ $QUESTAO -eq 00 ] ; then
	break
fi

bash "atv$QUESTAO.sh"

done
