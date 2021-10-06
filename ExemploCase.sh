#!/bin/bash

case "$1" in
	[0-9])
		echo "O Parãmetro é um numero"
		;;
   	[A-Z])
		echo " O Parâmetro é uma letra maiuscula"
	        ;;
	[a-z])
		echo " O Parametro é uma letra minuscula"
		;;
	*)
		echo "O Parametro é um caracter especial"
esac
