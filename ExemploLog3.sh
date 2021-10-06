#!/bin/bash

######################################
#
# PrimeiroScript.sh -  Script de Exemplo do Curso
# 
# Autor: Lucas Chiaratti ( chiaratti@gmail.com)
# Data Criação: 02/09/2021
#
# Descrição: Script de exemplo que le data e hora atual e exibe a lista de alunos
#
# Exemplo de uso: ./PrimeiroScript.sh 
#
# Alterações 
#       Dia X - Inclusão da Função 
#       Dia Y - Correção
#
######################################

DATAHORA=$(date +%H:%M)
ARQALUNOS="/root/arquivos/alunos2.txt"


# Funcao de leitura da data e hora 

echo "Iniciando o Script..." | logger -p local0.warn -t [$0]

clear
echo "========Meu Primeiro Script ======="
echo ""
echo "Exibir data e hora atual: $DATAHORA"

# Area de leitura da lista de alunos
echo "============================"
echo "Listagem dos Alunos: "
sort $ARQALUNOS  # caminho dos arquivos de alunos

DATAHORA=$(date +%H)
echo "====================================="
echo "Nova Hora Atual: $DATAHORA"

logger -p local0.warn -t [$0] "Fim do Script,,,,,"

