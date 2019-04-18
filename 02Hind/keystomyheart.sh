#!/bin/bash

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    keystomyheart.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssettle <ssettle@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/12 18:55:07 by ssettle           #+#    #+#              #
#    Updated: 2019/03/12 19:27:57 by ssettle          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

cp ~/.zshrc ~/.zshrc_backup

echo "export UIDHEARTKEY=608a2df57f16df0adeca7ca78b8a929823c761687b489deba638db41c66f7e95"\
>> ~/.zshrc
echo "export SECRETHEARTKEY=69abae6bd79406c45e7d7a671281bb572946d0eef748e01017ee65bcca9713b8"\
>> ~/.zshrc

zsh
