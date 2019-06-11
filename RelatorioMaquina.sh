#!/bin/bash

#####################################################################
#                                                                   #
# Nome: exercicio1.sh                                               #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 11/06/2019                                                  #
#                                                                   #
# Descrição: O Script gera um relatório com as principais           #
#            informações do servidor                                #
# Uso: ./RelatorioMaquina.sh                                        #
#                                                                   #
#####################################################################


KERNEL=$(uname -r)
HOSTNAME=$(hostname)
CPUNO=$(cat /proc/cpuinfo | grep "model name"| wc -l)
CPUMODEL=$(cat /proc/cpuinfo | grep "model name"| head -n1|cut -c14-) # Em MB
MEMTOTAL=$(expr $(cat /proc/meminfo | grep MEmTotal| tr -d ' '| cut -d: -f2| tr -d kB) / 1024)
FILESYS=$(df -h|egrep -v '(tmpfs|udev)')
UPTIME=$(uptime -s)

clear 
echo "======================================================================================"
echo "Relatório da Máquina: $HOSTNAME"
echo "Data/Hora: $(date)"
echo "======================================================================================"
echo
echo "Máquina Ativa desde: $UPTIME"
echo 
echo "Versão do kernel: $KERNEL"
echo 
echo "CPUs:"
echo "Quantidade de CPUs/Core: $CPUNO"
echo "Model da CPU: $CPUMODEL"
echo 
echo "Memória Total: $MEMTOTAL MB"
echo 
echo "Partições:"
echo "$FILESYS"
echo 
echo "======================================================================================"