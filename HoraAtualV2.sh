#!/bin/bash

#####################################################################
#                                                                   #
# Nome: HoraAtualV2.sh                                              #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 12/06/2019                                                  #
#                                                                   #
# Descrição: Um script baseado na hora atual escreve "Bom dia"      #
#            "Boa Tarde" ou "Boa Noite".                            #
# Uso: ./HoraAtualV2.sh                                             #
#                                                                   #
#####################################################################

HORA=$(date +%H)
MIN=$(date +%M)

# If para definir período
# Estou considerando que das 00:00 ás 06:00 é noite
echo
if [ $HORA -ge 06 -a $HORA -lt 12 ]
then
    echo "Bom Dia!"
elif [ $HORA -ge 12 -a $HORA -lt 18 ]
then 
    echo "Boa Tarde!"
else    
    echo "Boa Noite"
fi

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

