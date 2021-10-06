#!/bin/bash

ARQALUNOS="/root/arquivos/alunos2.txt"

clear
echo "=========Script de Busca de ALunos ======="
echo ""


ALUNOCOMPLETO=$(grep "$1" $ARQALUNOS)

echo ""
echo "O nome completo do aluno é: $ALUNOCOMPLETO "
echo ""
echo "Fim do Script"
