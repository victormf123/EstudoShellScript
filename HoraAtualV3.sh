#!/bin/bash

#####################################################################
#                                                                   #
# Nome: HoraAtualV3.sh                                              #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 12/06/2019                                                  #
#                                                                   #
# Descrição: Um script baseado na hora atual escreve "Bom dia"      #
#            "Boa Tarde" ou "Boa Noite".                            #
# Uso: ./HoraAtualV3.sh                                             #
#                                                                   #
#####################################################################

HORA=$(date +%H)
MIN=$(date +%M)

# Case para definir período
# Estou considerando que das 00:00 ás 06:00 é noite
echo

    case $HORA in
        0[6-9] | 1[01])
            echo "Bom Dia!"
            ;;
        1(2-7)
            echo "Boa Tarde!"
            ;;
        *) 
            echo "Boa Noite"
            ;;
    esac

#If para reduzir a hora e definir AMPM
if [ $HORA -ge 12 ]
then 
    AMPM=PM
    if [ $HORA -ne 12 ]
    then
        HORA=$(expr $HORA - 12)
    fi
else
    AMPM=AM
fi

echo
echo "A hora atual é: $HORA:$MIN $AMPM"
