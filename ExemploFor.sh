#!/bin/bash

#####################################################################
#                                                                   #
# Nome: ExemploFor.sh                                               #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 12/06/2019                                                  #
#                                                                   #
# Descrição: O Script mostra um exemplo de comandos LOOP            #
#                                                                   #
# Uso: ./ExemploFor.sh                                              #
#                                                                   #
#####################################################################

clear
read -p "Informe o inicio da sequência: " INICIO
read -p "Informe o final da sequência: " FINAL

for i in $(seq $INICIO $FINAL)
do  
    echo "Exibindo o valor $i"
    sleep 1
done