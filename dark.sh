#!/bin/bash

#cores da fonte""
#legenda 

#v >> vermelho
#vs >>    //     sublinhado

#V >> verde
#Vs  >>  //   sublinhado

#r >> roxo
#rs >>  //  sublinhado

#c >> cyan
#cs >> //  sublinhado

#a >> azul
#as >> //  sublinhado

#A >> amarelo
#As >>    //    sublinhado

#b >> branco
#bs >>  //   sublinhado

v="\033[1;31m"
vs="\033[04;31m"
V="\033[1;32m"
Vs="\033[04;32m"
r="\033[1;35m"
rs="\033[04;35m"
c="\033[1;36m"
cs="\033[04;36m"
a="\033[1;34m"
as="\033[04;34m"
A="\033[1;33m"
As="\033[04;33"
b="\033[1;37m"
bs="\033[04;37m"

#estilos de fonte alterar este número depois do colchete
# 00: nenhum
# 01: negrito
# 04: sublinhado
# 05: piscante
# 07: reverso
# 08: oculto




echo
echo "$a              PROJETO BY: LORD D4RK 4NGEL

          TELEGRAM @D4rk4ngel2"

echo

echo
echo "$V

         _/  _/  _/              _/
    _/_/_/  _/  _/    _/  _/_/  _/  _/
 _/    _/  _/_/_/_/  _/_/      _/_/
_/    _/      _/    _/        _/  _/
 _/_/_/      _/    _/        _/    _/



  _/  _/                                  _/
 _/  _/    _/_/_/      _/_/_/    _/_/    _/
_/_/_/_/  _/    _/  _/    _/  _/_/_/_/  _/
   _/    _/    _/  _/    _/  _/        _/
  _/    _/    _/    _/_/_/    _/_/_/  _/
                       _/
                  _/_/
"


echo
#DATA

d=$(date)
echo
echo "$A hoje e >> $d vamos fazer oque hoje? "

#MENU

menu ( )
{
echo "$V ====================================================
===============$r escolha uma opcao $V ===============
====================================================
$r

   1 >> instalar um pacote

   2 >> verificar se pacote esta instalado

   3 >> update

   4 >> instalar todos os pacotes iniciais

   5 >> corrigir erros de pacotes

   6 >> ver senhas Wifi salvas

   7 >> criar wordlist

   8 >> criptografar arquivos/pastas 

$c PARA SAIR APERTE $V ((CRTL+C)) $c A QUALQUER MOMENTO
"

read opcao
  echo "$c voce escolheu $v >> $c $opcao $v << $c aguarde carregando..."
    sleep 2

case $opcao in

   1)
       INSTALAR
;;
   2)
      VERIFICAR
;;
   3)
      UPDATE
;;
   4)
      INICIAL
;;
   5)
     ERROS
;;
   6)
     WIFI
;;
   7) 
     WL
;;
   8)
     CRIP
;;
   *)
      INVALIDO

  esac
}

#ESCOLHER QUAL PACOTE INSTALAR

INSTALAR ( )
{

echo
  echo "$a diga o nome do pacote $b "
   read nome
      echo "$V instalando $b $nome $V aguarde "
    sleep 2
      apt-get install $nome

echo "$r terminado voltando ao menu"
        sleep 2
     clear
  menu
}

#VERIFICAR SE PACOTE ESTA INSTALADO 2 MÉTODOS

VERIFICAR ( )
{
echo

    echo "$c deseja verificar pelo modo $v 1 $c ou $v 2 $c ?!"
      read go
#MÉTODO 1

if [ "$go" = "1" ];then
   echo "$a diga-me o nome do pacote $b "
     read nome


echo "$As se o pacote estiver instalado ele aparecera o
 diretorio do arquivo.. se nao aparecer nada o pacote nao esta instalado"
             sleep 6
         echo "$V verificando se $b $nome $V esta instado aguarde..."
echo
echo
             sleep 2
        w=$(which $nome)
     echo "caminho do pacote e >> $w "


      sleep 4
    echo "$r terminado voltando ao menu"
        sleep 2
     clear
  menu
fi
#MÉTODO 2

if [ "$go" = "2" ];then
      echo "$a diga-me o nome do pacote $b "
     read nome

echo

   echo "$V verificando se $b $nome $V esta instalado aguarde..."
    sleep 2


echo

      dpkg -l $nome
    sleep 6


      echo "$r terminado voltando ao menu"
         sleep 2
      clear
   menu
fi
}
#UPDATE DA OS

UPDATE ( )
{
  echo "$V dando update no OS aguarde..."
    sleep 1
  apt-get update
 
echo "$r terminado voltando ao menu"
      sleep 2
    clear
  menu
}
#PACOTES INICIAIS

INICIAL ( )
{
   echo "$A para instalar voce deve dar o comando update antes  fez isso?? $v [s/n] $A??"
      read op
   if [ "$op" = "s" -o "$op" = "S" ];then
     echo "$a instalando todos os pacotes iniciais aguarde..."
       sleep 2
   apt-get install gcc Build-essential perl git python python3-pip libany-uri-escape-perl libhtml-html5-entities-perl libhtml-entities-numbered-perl libhtml-parser-perl libwww-perl hydra

echo


echo "$r terminado voltando ao menu"
       sleep 2
     clear
   menu
fi
if [ "$op" = "n" -o "$op" = "N" ];then
   echo "$a de update e volte aqui"
       sleep 2
     clear
  menu
fi
}
#CORRIGIR ERROS DE PACOTES

ERROS ( )
{
   echo "$V corrigindo erros de pacotes aguarde..."
     sleep 2
    apt-get install dialog && apt-get install apt-utils

  echo "$r terminado voltando ao menu"
       sleep 2
    clear
  menu
}
#SENHS WIFI SALVAS

WIFI ( )
{
   echo "$V carregando senhas salvas aguarde..."
      sleep 2

    wi=$(tail -n +18 /data/misc/wifi/wpa_supplicant.conf )
     echo "$c as senhas wifi salvas sao >>>>>>>>  
$a $wi "
     

echo


   echo "$v quer fazer backup das senhas para a pasta home?
 [s/n]"
     read bac
      if [ "$bac" = "n" -o "$bac" = "N" ];then

        echo "$r ok! voltando ao menu"
      sleep 2
    clear
  menu
fi
      if [ "$bac" = "s" -o "$bac" = "S" ];then
      echo "$c fazendo backup das senhas aguarde..."
       tail -n +18 /data/misc/wifi/wpa_supplicant.conf > /home/senhaswifi.txt

echo "$a backup completo"
fi
     sleep 1
    echo "$r voltando ao menu"
       sleep 2
     clear
   menu
}
#CRIAR WORDLIST COM CRUNCH

WL ( )
{
   echo "$A nescessario ter o pacote crunch instalado.. voce tem instalado?? $v [s/n] $b??"
echo
      read op
   if [ "$op" = "s" -o "$op" = "S" ];then
    echo
echo "$V entao vamos fazer a wordlist aperte  enter para
 prosseguir"
     read segue
   sleep 1
     echo
   echo "$b use sua criatividade para gerar sua wordlist"
   sleep 1
     echo "≠≠≠≠≠≠≠"
echo "$a digite o minimo de um espaco e o maximo de
 caracteres... exemplo.. $A '5 8' $b "
       echo ""
   read car
echo
echo "$r agora os caracteres usados contendo somente numeros, letras ou numeros e letras..exemplos $A'123' , 'senha' ou 'senha123' $r "
         echo ""
   read car2
echo "$c escolha o nome da wordlist"
      echo ""
  read nwl
     crunch $car $car2 -o /home/$nwl.txt

echo " "
echo "$V wordlist criada com sucesso.. está na pasta home do gnuroot"
echo
    sleep 2
echo
echo "$r terminado voltando ao menu"
       sleep 2
     clear
   menu
fi
if [ "$op" = "n" -o "$op" = "N" ];then
   echo "$a volte ate o menu escolha a opcao $V " 1 " $a e instale o $V crunch $a depois disso volte aqui"
       sleep 5
     clear
  menu
fi
}
#CRIPTOGRAFIA/DESCRIPTOGRAFIA

CRIP( )
{
 echo "$v((( $A arquivo deve estar na pasta home do gnuroot $v)))"

echo

echo "$c deseja criptografar ou descriptogarar? $v [C/D] $c"
echo
read op

echo

if [ "$op" = "c" -o "$op" = "C" ];then
   echo "$b irei criptografar o arquivo diga-me o nome seguido  da extensao... exemplo $v 'foto.jpg' $b"

       read nome
         find $nome


   echo "$V seu arquivo $v >> $V $nome $v << $V esta sendo criptografado aguarde..."

     gpg -c $nome
       sleep 2
     clear
fi
if [ "$op" = "d" -o "$op" = "D" ];then
      echo " $b irei descriptografar seu arquivo diga-me o nome e a extensao seguido de ((.gpg))... exemplo: $v
'foto.jpg.gpg' $b "
     read nome
    gpg --decrypt-file $nome
       sleep2
     clear
fi
echo "$a deseja apagar o arquivo de origem? $v [s/n] $b "

read op2
 
if [ "$op2" = "s" -o "$op2" = "S" ];then
    echo "$c apagando o arquivo aguarde..."
      rm -rf $nome 
    echo "$r terminado voltando ao menu"
        sleep 2
      clear
   menu
fi
if [ "$op2" = "n" -o "$op2" = "N" ];then
     echo "$r ok! mantendo os dois arquivos e voltando ao menu"
         sleep 2
       clear
    menu
fi
}
#SAIDA DE COMANDO INVALIDO

INVALIDO ( )
{
echo 
echo "$v >> $V OPCAO INVALIDA TENTE NOVAMENTE $v <<"
     sleep 3
  clear
menu
}
menu