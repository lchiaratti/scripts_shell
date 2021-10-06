#!/bin/bash
echo""
echo"Script Usuario"
echo""
read -p "Digita o usuario:" USER
echo ""

IDUSER=$(id $USER | cut -d ":" -f3)
NOME=$(grep $USER | cat /etc/passwd| cut -d":" -f5 | tr -d ,)
PASTA=$(cat /etc/passwd | grep $USER | cut -d ":" -f6)
ESPACO=$(du -sh $PASTA)
LASTLOG=$(lastlog -u $USER)

echo""
echo ""
echo -n "UUID: $IDUSER"
echo ""
echo -n  "Nome ou Descrição: $NOME"
echo ""
echo -n  "Total usado no $PASTA: $ESPACO"
echo ""
echo -n  "Ultimo login: $LASTLOG"
echo ""

