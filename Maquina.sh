#!/bin/bash
echo "Script maquinas"
echo""
HOST=$(hostname)
UP=$(uptime -s)
KER=$(uname -r)
CPU=$(cat /proc/cpuinfo | grep "cpu cores" | wc -l)
MCPU=$(cat /proc/cpuinfo | grep "model name" | head -n1 | cut -c14-)
MEM=$(expr $(cat /proc/meminfo | grep MemTotal|tr -d ' ' | cut -d: -f2| tr -d kB) / 1024) # EM MB
# MEM=$(free -m | grep Mem | cut -c10-20)
# PART=$(df -h | sed '/tmpfs/d' | sed '/udev/d')
PART=$(df -h | egrep -v '(tmpfs|udev)')

echo -n "Relatório da Máquina: $HOST"
echo ""
echo -n "Data atual: $(date)"
echo ""
echo -n "Ativa desde: $UP"
echo ""
echo -n "Versão do Kernel: $KER"
echo ""
echo -n "Quantidade de CPUs/Core $CPU" 
echo ""
echo -n "Modelo da CPU $MCPU"
echo""
echo -n "Memória Total: $MEM MB"
echo ""
echo -n "Particões: $PART"
echo ""

