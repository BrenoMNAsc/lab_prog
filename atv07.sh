#!/bin/bash
clear
echo -e '\033[01;32m== Script 07 ==
Todos os semestres a coordenação de Sistemas de Informação exige que o professor repasse a ela os dias em que 
serão utilizados o laboratório 06. Essas datas baseiam-se nos dias da semana em que são ministradas as aulas. Como nossa
disciplina exige uso intensivo do laboratório, o professor repassa à coordenação todas as datas do semestre letivo em 
que são ministradas as aulas de TETI, para que possamos usar o laboratório 100% do tempo disponível. Esse é um processo
trabalhoso, que envolve a busca dessas informações em um calendário e a transcrição das datas para um e-mail que é 
enviado à coordenação. Para minimizar esse problema, o professor quer que vocês desenvolvam um script que, a partir da 
informação dos dias da semana em que há aulas de TETI, produza todas as respectivas datas do ano em que serão 
ministradas nossas aulas\033[00;37m'

DiaEmSeg=86400
echo 'Digite a data no formato (Ano/Mês/Dia)'
read -p "Digite a data inicial: " data1
read -p "Digite a data final:" data2
read -p "Digite os dias da semana (segunda = 1, terça = 2...): " dias

dataIni=$(date -d "$data1" +%s)
dataFim=$(date -d "$data2" +%s)

for (( i=$dataIni; i<=$dataFim; i+=$DiaEmSeg )) ; do
	data=$(date -d @$i +%w)
	if [[ $dias =~ $data ]] ; then
		echo "$(date -d @$i +%d/%m/%Y)"
	fi
done

echo -e '\033[01;32mAperte ENTER para continuar...\033[00;37m'
read && clear
