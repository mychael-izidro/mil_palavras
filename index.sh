#!/bin/bash
#source ./key.sh
source ./words.sh

echo "Bem-vindo ao Shell.En 1.0"

read comando
#-----------------------------> Área de funções do programa <----------------------------------
mod1(){
    valor=0
    contagem=0
    while [ $valor -lt 10 ];do
    clear
    echo "-----------------------------------------------------------------------------------"
    echo "
    Escreva a palavra em inglês para seguir em frente!
    "
    echo "${modulo1[$contagem]} --> ${modulo1[$contagem + 1]}"

    read comando
    if [ "$contagem" = "100" ];then
        comando="sair"
    fi
    if [ "$comando" = "sair" ];then
        valor=12
    fi
    if [ "$comando" = "${modulo1[$contagem]}" ];then
        read comando 
        if [ "$comando" = "${modulo1[$contagem + 1]}" ];then
        contagem=$[contagem + 2]
        fi
    fi
    if [ "$comando" = "." ];then
        mpg123 ./audios/${modulo1[$contagem]}.mp3
    fi
    done
}
mod(){
    echo "CADA MODULO DE ESTUDO COMTEM 50 PALAVRAS"
    read comando
    case $comando in
    'mod list')
        echo "
        modulo 1
        modulo 2
        modulo 3
        modulo 4
        modulo 5
        modulo 6
        modulo 7
        modulo 8
        modulo 9
        modulo 10
        modulo 11
        modulo 12
        modulo 13
        modulo 14
        modulo 15
        modulo 16
        modulo 17
        modulo 18
        modulo 19
        modulo 20
    "
    ;;
    "1")
    valores=0
    while [ $valores -lt 10 ];do
    mod1
    echo "vol -> para volta / ou pressione Enter para repetir a lição!"
    read comando
    if [ "$comando" = "vol" ];then
        valores=12
    fi
    done
    ;;
    "2")
     echo 'list'
    ;;
    "3")
     echo 'list'
    ;;
    "4")
     echo 'list'
    ;;
    "5")
     echo 'list'
    ;;
    "6")
     echo 'list'
    ;;
    "7")
     echo 'list'
    ;;
    "8")
     echo 'list'
    ;;
    "9")
     echo 'list'
    ;;
    "10")
     echo 'list'
    ;;
    "11")
     echo 'list'
    ;;
    "12")
     echo 'list'
    ;;
    "13")
     echo 'list'
    ;;
    "14")
     echo 'list'
    ;;
    "15")
     echo 'list'
    ;;
    "16")
     echo 'list'
    ;;
    "17")
     echo 'list'
    ;;
    "18")
     echo 'list'
    ;;
    "19")
     echo 'list'
    ;;
    "20")
     echo 'list'
    ;;
    *)
    echo "COMANDO NÃO RECONHECIDO!!!"
    ;;
    esac 
}

#-------------------------------------> Fim <--------------------------------------------------
case $comando in
'list')
echo "
        LISTA DE COMANDOS 

        mod -> modulo
        st  -> status do estudo
        num -> numeros
        est -> estudo
        s   -> sim
        n   -> nao
        vol -> voltar
        "
;;
'mod')
mod
;;

esac
