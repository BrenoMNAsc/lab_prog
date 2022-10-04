#!/bin/bash
clear
echo -e '\033[01;32m== Script 08 ==
Considere um determinado diretório que possui vários arquivos textos. 
Esses arquivos possuem nomes variados, não obedecendo a qualquer critério. 
Escreva um script que renomeie cada arquivo desse diretório, dando ao arquivo o 
nome correspondente à primeira palavra encontrada no conteúdo do próprio arquivo\033[00;37m'

i=0
for arq in $(ls)
do
    if [ ${arq: -4} == ".txt" ]
    then
        p=$(head -n1 $arq | cut -d ' ' -f 1)
        mv $arq "$p.txt"
        echo "$arq foi renomeado para $p"
        i=$(($i+1))
    fi
done

if [ $i -eq 0 ]
then
    echo "Não existiam .txt para renomear"
fi
echo -e '\033[01;32mAperte ENTER para continuar...\033[00;37m'
read && clear




