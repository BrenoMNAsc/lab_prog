#!/bin/bash
TEXT=$(sed 's/ /\n/g' <<< "$*")
INORDER=($(printf '%s\n' ${TEXT[@]} | sort))
echo ${INORDER[@]}|sed 's/ /\n/g'
