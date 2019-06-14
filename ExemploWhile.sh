#!/bin/bash

#####################################################################
#                                                                   #
# Nome: ExemploWhile.sh                                             #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 13/06/2019                                                  #
#                                                                   #
# Descrição: O Script mostra um exemplo de comandos LOOP            #
#                                                                   #
# Uso: ./ExemploWhile.sh                                            #
#                                                                   #
#####################################################################

clear
read -p "Informe o limite de Processos: " MAXIMO

while [ $(ps axu|wc -l) -le $MAXIMO ]
do
    echo "Tudo OK"
    echo "Processos Atuais: $(ps axu|wc -l)"
    sleep 3
    echo
done

echo "Limite de Processos Excedido"
echo "Por favor verifique o sistema"

# i=1
# while [ $i -lt 30 ]
# do
#     echo valor $i
#     i=$(expr $i + 1)
# done