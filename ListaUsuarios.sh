#!/bin/bash

#####################################################################
#                                                                   #
# Nome: ListaUsuarios.sh                                            #
#                                                                   #
# Autor: Matheus Freitas (matheus.freitas@ibti.org.br)              #
# Data: 13/06/2019                                                  #
#                                                                   #
# Descrição: Listar todos os usuários (humanos) do sistema          #
#            exibindo as principais informacoes da conta            #
# Uso: ./ListaUsuarios.sh                                           #
#                                                                   #
#####################################################################

#UIDs utilizados para usuários comuns
MIN_UID=$(grep "^UID_MIN" /etc/login.defs|tr -s "\t"|cut -f2)
MAX_UID=$(grep "^UID_MAX" /etc/login.defs|tr -s "\t"|cut -f2)
OLDIFS=$IFS
IFS=$'\n'

#Criando o cabeçalho da saida
echo -e "USUARIO\t\tUID\t\tDIR_HOME\t\tNOME OU DESCRICAO"

for i in $(cat /etc/passwd)
do  
    USERID=$(echo $i | cut -d":" -f3)
    if [ $USERID -ge $MIN_UID -a $USERID -le $MAX_UID ]
    then
        USER=$(echo $i | cut -d":" -f1)
        USERDESC=$(echo $i | cut -d":" -f5 | tr -d ',')
        USERHOME=$(echo $i | cut -d":" -f6)
        echo -e "$USER\t\t$USERID\t\t$USERHOME\t\t$USERDESC"
    fi
done

IFS=$OLDIFS