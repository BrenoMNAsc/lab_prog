#!/bin/bash
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