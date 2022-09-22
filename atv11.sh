#!/bin/bash
case $2 in
+) echo $(($1+$3)) ;;
-) echo $(($1-$3)) ;;
x) echo $(($1*$3)) ;;
/) echo $(($1/$3)) ;;
*) ehco "opção invalida, tente: +, -, x ou /"
esac
