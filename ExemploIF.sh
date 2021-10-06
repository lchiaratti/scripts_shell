#!/bin/bash
USUARIO=$(grep "$1" /etc/passwd)

if test -n "$USUARIO"
then 	
	echo "O usuario existe"
else
	echo "O Usuario nao existe"
fi
