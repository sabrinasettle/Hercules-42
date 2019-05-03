# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    howdoyoulikethemapples.sh                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssettle <ssettle@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/30 13:56:53 by ssettle           #+#    #+#              #
#    Updated: 2019/05/03 14:16:01 by ssettle          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash
#hercules_key.pub is access and validation to acces the debian user

if [ "$#" -lt 3 ] ; then
    echo "usage: sh $0 <user> <ip> <port> <flags>\n"
    echo "FLAGS:\n -k     generate key"
    echo "EXAMPLE: \n - user: hercules\n - ip:   localhost\n - port: 1313\n"
    exit 1
fi

if [ "$4" = "-k" ] || [ "$5" = "-k" ] ; then
    # Generate SSH Key | -t Type | -f Filename
    ssh-keygen -t rsa -f ~/.ssh/hercules_key
    ssh-copy-id -i ~/.ssh/hercules_key.pub -p $3 $1@$2
fi

ssh -i ~/.ssh/hercules_key -p $3 $1@$2
