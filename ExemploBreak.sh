#!/bin/bash

#####################################################################
#                                                                   #
# Nome: ExemploBreak.sh                                             #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 13/06/2019                                                  #
#                                                                   #
# Descrição: O Script mostra um exemplo de comandos LOOP            #
#                                                                   #
# Uso: ./ExemploBreak.sh                                            #
#                                                                   #
#####################################################################

read -p "Qual o(a) melhor aluna(a): " MELHOR

for i in $(cat ./arquivos/alunos.txt)
do
    if [ $i = $MELHOR ]
    then
        echo "$i é o(a) melhor aluno(a)"
        break 
    fi
    echo "Aluno (a): x$i"
done