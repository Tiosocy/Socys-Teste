#!/bin/sh
clear
echo "\033[37;1m
.#%%%%%..              
      ,%%&&&&&&&&&&&&&&&&&&&&&&&&%(    
   %&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%  
  %&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& 
  &&&&&%((%&&&&&&&&&&&&&&&&&&%#(#&&&&&%
 %&&&/      &&&&&&&&&&&&&%&&.     *%&&&
 &&&#&&&&#((   ,&&&&&&&&#   (((&&&&%(&&
 &&&&&&&&&&&&((/ &&&&&& ,((&&&&&&&&&&&&
%&&&&&&&&&&&&&&(%&&&&&&&(&&&&&&&&&&&&&&
%&&&&&,&      % &&&&&&&&& (     & &&&&&
%#/**  &&(,,/%%.&&&&&&%&((/    ,&#  ,& 
%&&&&&&%&&&&&&&&&%&&&&%&&&&&&&&&&&&&&&&
%&&&%%%%%%&&&&&&&%&&&&%%&&&&&&&%%%%%%&&
 &&&%%%%%%&&&&&%&%&&&&%&%&&&&&%%%%%%%&&
 &&&&%%%%&&&(&%&&%&&&&%&&&&(%&&&%%%%&&&
 %&%(%(#%&&&&&%&&%&&&&%&&&&&&&&&#(#&(&&
  &&((& /&&&&&&&&  ##. &&&&&&&&&  &(&&&
  %&&((&  &&&&&    &&    /%&&&  #&(&&&#
   &&&&(&&        &&&&&       ,&((&&&% 
   @&&&&(&#&&&&&&%%%%%%%&&&&&&&&#&&&&  
     &&&&&&&&&&&&&&&&&&&&&&&&&#&&&&&   
      %&&&&%&&&&&&&  #&&&&&&&%&&&&%    
        %&&&&&&&&&&   &&&&&&&&&&%      
          %&&&&&&&&   &&&&&&&&%        
            %&&&&&&  .&&&&&&   "
echo "\033[32;1m

   \033[32;1m  [+] \033[31;1m Metasploit Root\033[32;1m [+]\033[30m"

echo "\n"
echo -n "
   \033[31;1m[\033[32;1m01\033[31;1m]\033[37;1m install Metasploit
   \033[31;1m[\033[32;1m02\033[31;1m]\033[37;1m Msfconsole
   \033[31;1m[\033[32;1m03\033[31;1m]\033[37;1m Msfconsole --Help
   
\033[32;1m[\033[31;1m#\033[32;1m]\033[37;1m root@kali:~# "
read bj
cd modules

if [ $bj = 01 ] || [ $bj = 1 ]
then
clear
./curl -LO https://raw.githubusercontent.com/1Tech-X/Metasploit-4.16.12/master/metasploit.sh

elif [ $bj = 02 ] || [ $bj = 2 ]
then
clear
cat Msfconsole.txt

elif [ $bj = 03 ] || [ $bj = 3 ]
then
clear
cat metasploit.txt

else
clear
echo "\033[32;1m[\033[31;1m#\033[32;1m]\033[37;1m Nao Encontrado..."
sleep 1
cd ../
sh $0
fi