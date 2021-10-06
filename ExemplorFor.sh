#!/bin/bash

clear
read -p "Informa o inicio da sequência: " INICIO
read -p "Informe o final da sequência: " FINAL

	for i in $(seq "$INICIO" "$FINAL")
do
	echo "Exibindo o valor $i"
	sleep 1
done
