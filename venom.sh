#!/bin/sh
clear
echo "\033[37;1m
                                                                
                              #                           (                            
                             ,#                           (,                           
                             /&.                          &(                           
                             #@&                         &@%                           
                             %@@/                       *&&&                           
                             %@@@#                     (&@@&                           
                             /&@&&%/                 /&&@&&(                           
                              &&@&&%                 #&@@@&                            
                              /&&@@%%((           ((%&&@@&/                            
                                #%&&&&%%.       .%%%&&&&#                              
                                  #%&%%%#(.   .(#%%&&&%                                
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                      #     .                                          
                                    (* (*.*(.*../*,*/                                  
                                    .. ,,,, , ** .  ,                                  
                                                                                       
                                                                "
echo "\033[32;1m

   \033[32;1m  [+] \033[31;1m Venom \033[32;1m [+]\033[30m"

echo "\n"
echo -n "
   \033[31;1m[\033[32;1m01\033[31;1m]\033[37;1m Nano
   \033[31;1m[\033[32;1m02\033[31;1m]\033[37;1m nc
   \033[31;1m[\033[32;1m03\033[31;1m]\033[37;1m mesg
   \033[31;1m[\033[32;1m04\033[31;1m]\033[37;1m ar
   \033[31;1m[\033[32;1m05\033[31;1m]\033[37;1m time
   \033[31;1m[\033[32;1m06\033[31;1m]\033[37;1m ssh-keygen
   \033[31;1m[\033[32;1m07\033[31;1m]\033[37;1m ftpget
   \033[31;1m[\033[32;1m08\033[31;1m]\033[37;1m BitchX
   \033[31;1m[\033[32;1m09\033[31;1m]\033[37;1m ipcs
   \033[31;1m[\033[32;1m10\033[31;1m]\033[37;1m script
   \033[31;1m[\033[32;1m11\033[31;1m]\033[37;1m chat
   \033[31;1m[\033[32;1m12\033[31;1m]\033[37;1m cryptpw
   \033[31;1m[\033[32;1m13\033[31;1m]\033[37;1m curl

\033[32;1m[\033[31;1m#\033[32;1m]\033[37;1m root@kali:~# "
read bj
cd modules

if [ $bj = 01 ] || [ $bj = 1 ]
then
clear
./nano

elif [ $bj = 02 ] || [ $bj = 2 ]
then
clear
./nc

elif [ $bj = 03 ] || [ $bj = 3 ]
then
clear
./mesg

elif [ $bj = 04 ] || [ $bj = 4 ]
then
clear
./ar

elif [ $bj = 05 ] || [ $bj = 5 ]
then
clear
./time

elif [ $bj = 06 ] || [ $bj = 6 ]
then
clear
./ssh-keygen

elif [ $bj = 07 ] || [ $bj = 7 ]
then
clear
./ftpget

elif [ $bj = 08 ] || [ $bj = 8 ]
then
clear
./BitchX

elif [ $bj = 09 ] || [ $bj = 9 ]
then
clear
./ipcs

elif [ $bj = 10 ]
then
clear
./script

elif [ $bj = 11 ]
then
clear
./chat

elif [ $bj = 12 ]
then
clear
./cryptpw

elif [ $bj = 13 ]
then
clear
./curl

else
clear
echo "\033[32;1m[\033[31;1m#\033[32;1m]\033[37;1m Nao Encontrado..."
sleep 1
cd ../
sh $0
fi