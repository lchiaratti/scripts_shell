#!/bin/bash

HORA=$(date +"%R %p")
EXATO=$(date +"%H")

if test $EXATO -gt 6 -a $EXATO -lt 12
then
     echo Bom dia!
     echo "A hora atual é: $HORA"

elif test $EXATO -gt 12 -a $EXATO -lt 18
then
    echo Boa tarde! 
    echo "A hora atual é: $HORA"
else
    echo Boa noite
    echo "A hora atual é: $HORA"
fi
