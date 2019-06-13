#!/bin/bash

#####################################################################
#                                                                   #
# Nome: MonitoraProcesso.sh                                         #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 13/06/2019                                                  #
#                                                                   #
# Descrição: Listar todos os usuários (humanos) do sistema          #
#            exibindo as principais informacoes da conta            #
# Uso: ./MonitoraProcesso.sh                                        #
#                                                                   #
#####################################################################

TIME=5
if [ $# -eq 0 ]
then
    echo "Favor informar um processo como argumento."
    echo "./MonitoraProcesso.sh <processo>"
    exit 1
fi

while true
do
    if ps axu | grep $1 |grep -v grep |grep -v $0 > /dev/null
    then
        sleep $TIME
    else
        echo "ATENÇÃO!!!!!! O processo $1 NÃO está em execução!"
        sleep $TIME
    fi
done