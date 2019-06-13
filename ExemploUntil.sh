#!/bin/bash

#####################################################################
#                                                                   #
# Nome: ExemploUntil.sh                                             #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 13/06/2019                                                  #
#                                                                   #
# Descrição: O Script mostra um exemplo de comandos LOOP            #
#                                                                   #
# Uso: ./ExemploUntil.sh                                            #
#                                                                   #
#####################################################################

until ps axu |grep firefox |grep -v grep > /dev/null
do 
    echo Inicie o Firefox...
    sleep 3
    echo
done 

echo Firefox Iniciado.
echo PID: $(pgrep firefox)