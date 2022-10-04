#!/bin/bash
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




