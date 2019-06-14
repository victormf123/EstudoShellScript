#!/bin/bash

#####################################################################
#                                                                   #
# Nome: ExemploCase.sh                                              #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 10/06/2019                                                  #
#                                                                   #
# Descrição: O Script mostra um exemplo de comando Case             #
#                                                                   #
# Uso: ./ExemploCase.sh A                                           #
# Uso: ./ExemploCase.sh 0                                           #
#####################################################################

case "$1" in
    [0-9])
        echo "O parâmetro é um número"
        ;;
    [A-Z])
        echo "O parâmetro é uma letra maiúscula"
        ;;
    [a-z])
        echo "O parâmetro é uma letra minúscula"
        ;;
    *)
        echo "O parâmetro é um caracter especial"
esac

