#!/bin/bash

#####################################################################
#                                                                   #
# Nome: ExemploForV2.sh                                             #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 12/06/2019                                                  #
#                                                                   #
# Descrição: O Script mostra um exemplo de comandos LOOP            #
#                                                                   #
# Uso: ./ExemploForV2.sh                                            #
#                                                                   #
#####################################################################

for i in /Users/matheus/Documents/ExerciciosShellScript/arquivos/*
do 
    if [ -f $i ]
    then 
        echo "Verificado o arquivo $i"
        LINHAS=$(cat $i | wc -l)
        echo "O arquivo $i contém $LINHAS linhas."
    fi
done