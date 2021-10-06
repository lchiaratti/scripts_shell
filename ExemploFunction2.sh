#!/bin/bash

ler () {
        read -p "Informe o Nome: " NOME
	read -p "Inform o sobrenome: " SOBRENOME
	return 10
}

ler
echo "Return Code = $?"
echo
echo $NOME $SOBRENOME
