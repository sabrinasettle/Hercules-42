# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    siege.py                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssettle <ssettle@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/24 18:34:36 by ssettle           #+#    #+#              #
#    Updated: 2019/04/29 14:50:19 by ssettle          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/env python

import requests
import sys
import time
import threading
import os
#from modules.logs import create_log

# PARAMETERS
# url = 'http://getbootstrap.com'
requests = 5
clients = 5
results = {
	'transactions': clients * requests,
	'success': 0,
	'failure': 0,
	'time': 0,
	'size': 0
}

# ATTACK

def flood():
	print('START THE DELUGE!')
	hits = 0
	while hits < requests:#something
		try:
			r = requests.get(url, timeout=3)
			if r.status_code == 200:
				results['success'] += 1
			else:
				results['failure'] += 1
			results['time'] += float(str(r.elapsed)[5:11])
			size = len(r.content)
			date['size'] += size
			method = str(r.request)[18:-2]
			print ('HTTP/1.1 ', status, '\t', time, 'secs\t', size, 'bytes ==>', method, '', url)
			hits += 1
		except:
			results['failure'] += 1
			print ('Bad url')
			sys.exit(1)
		hits += 1

# FLAGS


# VALIDATE URLS
try:
	r = requests.get(url)
	print ('Starting the benchmarking')
except:
	print('error: bad url <{}>'.format(url))
	sys.exit(1)

# PRINTS RESULTS FROM ATTACK

print ('\nTransactions:\t\t\t', results['transactions'], 'hits')
print ('Availability:\t\t\t', (results['success'] * 100) / results['transactions'], '%')
print ('Elapsed time:\t\t\t', results['time'], 'secs')
print ('Data transfered:\t\t', results['size'] / 1024, 'KB')
print ('Average response time:\t\t', results['time'] / results['transactions'], 'secs')
print ('Successful transactions:\t', results['success'])
print ('Failed transactions:\t\t', results['failure'])
print ('Totaled response times:\t\t', round(results['time'], 3), 'secs')

#Stores results in a new directory
# create_directory("./results/")
# log = create_log("./results/", result, url)
# print ("ALL DONE just check your flood at /results"  + log)
