#!/bin/bash

echo""
read -p "Informe o valor 1:" V1
read -p "Informe o valor 2:" V2

if [ ! $V1 ] || [ ! $V2 ]
then
    echo "Nehum dos valores pode ser nulo"
    exit 1
fi    

echo""
echo "Escolha uma operação:"
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"
echo "q - sair "
echo
read -p "Opção: " OPCAO

# Rotina de Opções
case $OPCAO in
	1) 
		OPER="+"
		;;
	2)
		OPER="-"
		;;
	3)
		if [ $V1 -eq 0 -o $V2 -eq 0 ]
		then
			echo "Um valor 0 não pode ser utilizado em uma multiplicação"
			exit 1
		fi
		OPER="*"
		;;
	4)
		if [ $V1 -eq 0 -o $V2 -eq 0 ]
		then
			echo "Um valor 0 não podem ser utilizado em uma divisão"
			exit 1
		fi

		if [ $(expr $V1 % $V2) -ne 0 ]
		then
			echo "Divisão com Resto = $(expr $V1 % $V2)"
		else
			echo "Divisão Exata"
		fi
		echo
		OPER="/"
		;;
         q)
                echo "Saindo..."
                exit 1
		;;
         *)
                echo "Opção Inválida"
                exit 1
               ;;          	       
esac
echo "$V1 $OPER $V2 = $(expr $V1 "$OPER" $V2)"

