#!/bin/bash

#####################################################################
#                                                                   #
# Nome: ExemplosFunctions.sh                                        #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 13/06/2019                                                  #
#                                                                   #
# Descrição: Esse script tem exemplos de uso de fuctions no shell   #
#            Script                                                 #
# Uso: ./ExemplosFunctions.sh                                       #
#                                                                   #
#####################################################################

maiuscula () {
    echo $1 | tr a-z A-Z
    # local VAR1=$(echo $1 | tr a-z A-Z) # Importante usar sempre dentro de uma função.
}

ler () {
    read -p "Informe o Nome: " NOME
    read -p "Informe o Sobrenome: " SOBRENOME
    return 10
}

#ler
echo "Return Code = $?"
echo
echo $NOME $SOBRENOME

VAR1=$(maiuscula $1)
echo $VAR1

adiciona () {
    soma=$( expr $1 + $2)
    echo "O resultado da soma foi $soma"
    return $soma
}

adiciona 10 20
