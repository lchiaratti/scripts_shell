#!/bin/bash

ARQALUNOS="/root/arquivos/alunos2.txt"

clear
echo "=========Script de Busca de ALunos ======="
echo ""
#echo -n "Por favor, informe o nome do aluno: "
#read ALUNO
read -p "Por favor, informe o nome do aluno: " ALUNO

ALUNOCOMPLETO=$(grep "$ALUNO" $ARQALUNOS)

echo ""
echo "O nome completo do aluno é: $ALUNOCOMPLETO "
echo ""
echo "Fim do Script"
