#!/bin/bash

ARQALUNOS="/root/arquivos/alunos2.txt"

clear
echo "=========Script de Busca de ALunos ======="
echo ""

if test $# -gt 0
then
   ALUNOCOMPLETO=$(grep "$1" "$ARQALUNOS")
   echo "O nome completo do aluno é: "$ALUNOCOMPLETO""
else
   echo "Informe o nome do aluno como parãmetro!"
fi
echo
echo "Fim do Script"
