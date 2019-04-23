# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    mangermanager.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssettle <ssettle@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/18 19:51:50 by ssettle           #+#    #+#              #
#    Updated: 2019/04/22 23:34:41 by ssettle          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

# runs the binary in the background
./manger &
# waits 5 seconds to continue
sleep 5

# Next we shut that shit down
# fun fact: kill is a wrapper to the 'kill' system call, which only knows
# PIDs (process ids). Where is pkill can determine the PIDs for you, based off
# things like the process name, owner of process, session id, you get it...

# pgrep looks through the currently running processes
#used both hexdump -C ./manger and objdump -s ./manger to find names of horses

# call to kill the horses by name
kill -s KILL $(pgrep manger ruins lampon xanthos crap) #didnt kill ruins totally until I added pgrep, doesnt need -bash??
# kills yes by itself by
pkill yes
# kills the manger
kill -s KILL $(top -l 1 | grep manger | cut -d " " -f 1)
#removed the .poo files
rm -rf *.poo

# Continue to my manger
clear; echo $'Hercules vs Mares won by Hercules\n'
read -rsp $'Press Enter for round two\n'
for ((i=3; i>0; i--))
do 
    clear; echo "In $i..."; sleep 1
done
clear;
#compile .c here
gcc ./zeusisgonnahatethis.c -o zeuskillme
#run my binary in background
./zeuskillme &
# waits 2 seconds
sleep 2

# Now we stop my creation
killall zeuskillme
echo "SUCK IT ZEUS!!!! :P"
rm zeuskillme
# Binary files contain bytes that are low level language interpretation

# 9 and 17 SIGS
# 9 : KILL
# 17 : CHLD

# call ps and top to moniter the processes
