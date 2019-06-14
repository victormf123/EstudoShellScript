#!/bin/bash

#####################################################################
#                                                                   #
# Nome: HoraAtual.sh                                                #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 12/06/2019                                                  #
#                                                                   #
# Descrição: Um script baseado na hora atual escreve "Bom dia"      #
#            "Boa Tarde" ou "Boa Noite".                            #
# Uso: ./HoraAtual.sh                                               #
#                                                                   #
#####################################################################

HORA=$(date +%H)
#HORA=$1
MIN=$(date +%M)

# If para definir período
# Estou considerando que das 00:00 ás 06:00 é noite
if [ $HORA -ge 06 -a $HORA -lt 12 ] # Se a hora for menor ou igual(-ge) á 06 e(-a) menor que(-lt) 12
then
    echo "Bom Dia!"
elif [ $HORA -ge 12 -a $HORA -lt 18 ] # Se a hora for menor ou igual(-ge) á 12 e(-a) menor que(-lt) 18
then
    echo "Boa Tarde!"
else
    echo "Boa Noite"
fi

# If para definir AM/PM
if [ $HORA -ge 12 ]
then 
    AMPM=PM
else
    AMPM=AM
fi

# If para reduzir a hora
if [ $HORA -gt 12 ] #Se for maior que(-gt) 12
then 
    HORA=$(expr $HORA - 12)
fi

echo 
echo "A hora atual é: $HORA:$MIN $AMPM"