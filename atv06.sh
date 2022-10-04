#!/bin/bash
i=0
while [ $i -ne 4 ]
do
	echo "1 - Exibir status da utilização das partições do sistema; (df -h)"
	echo "2 - Exibir relação de usuário logados; (who)"
	echo "3 - Exibir data/hora (date)"
	echo "4 - Sair"
	echo "Informe sua opção:"
	read op
	case $op in
	1) df -h ;;
	2) who ;;
	3) date ;;
	4) break ;;
	*) echo "Opcao não existe" ;;
	esac
	i="$op"
done