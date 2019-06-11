#!/bin/bash

#####################################################################
#                                                                   #
# Nome: exercicio1.sh                                               #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 10/06/2019                                                  #
#                                                                   #
# Descrição: O Script faz a soma de dois valores inseridos          #
#            pelo usuario                                           #
# Uso: ./exercicio1.sh                                              #
#                                                                   #
#####################################################################


read -p "Informe o Valor 1: " VALOR1
read -p "Informe o valor 2: " VALOR2


echo 
echo "A soma de $VALOR1 + $VALOR2 é $(expr $VALOR1 + $VALOR2)"