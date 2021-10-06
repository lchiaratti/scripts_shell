#!/bin/bash

DATA=$(echo $2|tr -d "/")
VAL1=$(echo $DATA|cut -c-2)
VAL2=$(echo $DATA|cut -c3-4)
ANO=$(echo $DATA|cut -c5-8)

RetornaFormato () {
# A função retorna 0 para a data em formato BR (DDMMYYYY), 1 para formato US (MMDDYYYY)
# e 2 quando é impossível determinar. Quando dia = mês, considera-se formato BR.
# Retorna 3 para formato inválido
        if [ $VAL1 -le 12 -a $VAL1 -eq $VAL2 ]  # Dia = Mes = FormatoBR
	then
		return 0
	elif [ $VAL1 -gt 12 -a $VAL2 -le 12 ]  # Formato BR
	then
		return 0
       
	elif [ $VAL1 -le 12 -a $VAL2 -gt 12 ]  # Formato US
	then
		return 1
	elif [ $VAL1 -le 12 -a $VAL2 -le 12 ]  # Formato Indefinido, mas válido
	then
		return 2
	else
		return 3
	fi
}

InverteDiaMes () {
# Função que inverte os valores do dia com mês e retorna o valor
        RetornaFormato $1
	local FORMATO=$?
	if [ $FORMATO -ne 3 ]
	then
		echo $VAL2/$VAL1/$ANO
	else
		echo "Formato de Data Invalido"
	fi
}

IncluiBarra () {
# Função que incluid uma barras na data
        RetornaFormato $1
	local FORMATO=$?
	if [ $FORMATO -ne 3 ]
	then
		echo "$VAL1/$VAL2/$ANO"
	else
		echo "Formato de Data Invalido"
	fi
}

DataExtenso () {
# Função que recebe uma data em formato BR e exibe a data em formato extenso
        RetornaFormato $1
        local RETURN_FORM=$?
        case $RETURN_FORM in
                0)                                   # Data em Formaro BR
                       local DIA=$VAL1
                       local MES=$VAL2
                       ;;
                1)                                   # Data em Formato US
                       
                       local DIA=$VAL2
                       local MES=$VAL1
                       ;;
                2)                                   # Formato Indefinido. Solicitar ao Usuario
                       local FORMATO=0
                       until [ "$FORMATO" = 1-O "$FORMATO" = 2 ]
                       do
                               echo
                               echo "Impossível determinar o padrão de data."
                               echo "1 - BR       
