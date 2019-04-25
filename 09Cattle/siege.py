# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    siege.py                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssettle <ssettle@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/24 18:34:36 by ssettle           #+#    #+#              #
#    Updated: 2019/04/24 19:01:10 by ssettle          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

import requests
import sys
import time
import threading

# ATTACK

def attack():
	print('Prepare to do battle!')

# FLAGS



# PRINTS RESULTS FROM ATTACK

print '\nTransactions:\t\t\t', data['transactions'], 'hits'
print 'Availability:\t\t\t', (data['success'] * 100) / data['transactions'], '%'
print 'Elapsed time:\t\t\t', data['time'], 'secs'
print 'Average response time:\t\t', data['time'] / data['transactions'], 'secs'
print 'Data transfered:\t\t', data['size'] / 1024, 'KB'
print 'Successful transactions:\t', data['success']
print 'Failed transactions:\t\t', data['failure']
