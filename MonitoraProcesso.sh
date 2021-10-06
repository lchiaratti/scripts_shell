#!/bin/bash


TIME=5

if [ $# -eq 0 ]
then
	echo "Favor informar um processo como argumento."
	echo "./MonitoraProcesso.sh <processo>"
	exit 1
fi

while true
do
	if ps axu |grep $1 |grep -v grep |grep -v $0 > /dev/null
	then
		sleep $TIME
	else
		echo "ATENÇÂO!!!!!! O Processo $1 NÂO está em execução!"
		sleep $TIME
	fi
done

