# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    siege.py                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssettle <ssettle@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/24 18:34:36 by ssettle           #+#    #+#              #
#    Updated: 2019/04/24 20:03:49 by ssettle          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

import requests
import sys
import time
import threading
import os

# ATTACK

def attack():
	print('Prepare to do battle!')
	i = 0
	hits = 0
	while i <  :#something
		try:
			r = requests.get(url, timeout=3)
			if r.status_code == 200
				data['success'] += 1
			else
				data['failure'] += 1
			data['time'] += float(str(r.elapsed)[5:11])
			size = len(r.content)
			date['size'] += size
			method = str(r.request)[18:-2]
			print 'HTTP/1.1 ', status, '\t', time, 'secs\t', size, 'bytes ==>', method, '', url
			hits += 1
		except:
			data['failure'] += 1
			print 'Bad url'
			sys.exit(1)
		i += 1
# FLAGS



# PRINTS RESULTS FROM ATTACK

print '\nTransactions:\t\t\t', data['transactions'], 'hits'
print 'Availability:\t\t\t', (data['success'] * 100) / data['transactions'], '%'
print 'Elapsed time:\t\t\t', data['time'], 'secs'
print 'Data transfered:\t\t', data['size'] / 1024, 'KB'
print 'Average response time:\t\t', data['time'] / data['transactions'], 'secs'
print 'Successful transactions:\t', data['success']
print 'Failed transactions:\t\t', data['failure']
print 'Totaled response times:\t\t', round(data['time'], 3), 'secs'
