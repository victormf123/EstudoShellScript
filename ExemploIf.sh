#!/bin/bash

#####################################################################
#                                                                   #
# Nome: ExemploIf.sh                                                #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 10/06/2019                                                  #
#                                                                   #
# Descrição: O Script mostra um exemplo de comando IF               #
#                                                                   #
# Uso: ./ExemploIf.sh root                                          #
#                                                                   #
#####################################################################

USUARIO=$(grep "$1" /etc/passwd)

if  test -n "$USUARIO" # OR [ -n "$USUARIO" ]
then
    echo "O usuário existe"
    if[ "$VAR1" = ricardo ]
    then
        echo ok
    fi     
    
else
    echo "O usuário não existe"
fi