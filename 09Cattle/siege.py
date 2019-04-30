# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    siege.py                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssettle <ssettle@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/24 18:34:36 by ssettle           #+#    #+#              #
#    Updated: 2019/04/29 19:16:47 by ssettle          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/env python

import requests
import sys
import time
import os
import argparse

# FLAGS
parser = argparse.ArgumentParser()
parser.add_argument('-u', metavar='url')
parser.add_argument('-c', metavar='clients')
parser.add_argument('-r', metavar='results')
args = parser.parse_args()

# FLAG CONDITIONS
url = args.u if args.u != None else 'https://google.com'
clients = args.c if args.c not in (None, 0) else 20
reqs = args.r if args.r not in (None, 0) else 5

# PARAMETERS
results = {
	'transactions': clients * reqs,
	'success': 0,
	'failure': 0,
	'time': 0,
	'size': 0
}

# VALIDATE URLS
try:
	r = requests.get(url)
	print 'URL:\t\t', url
	print 'Clients:\t', clients
	print 'Requests:\t', reqs, '\n'
except:
	print('error: bad url <{}>'.format(url))
	sys.exit(1)

#ATTACK
i = 0
print('START THE DELUGE!')
while i < clients:
		hits = 0
		while hits < reqs:#something
				r = requests.get(url)
				if r.status_code == 200:
					results['success'] += 1
				else:
					results['failure'] += 1
				time = str(r.elapsed)[5:-4]
				results['time'] += float(time)
				size = len(r.content)
				results['size'] += size
				method = str(r.request)[18:-2]
				print 'HTTP/1.1 ', r.status_code, '\t', time, 'secs\t', size, 'bytes ==>', method, '', url
				hits += 1
		i += 1

# PRINTS RESULTS FROM ATTACK
print '\n'
print 'And the clouds and rains parted...'
print 'Transactions:\t\t\t', results['transactions'], 'hits'
print 'Availability:\t\t\t', (results['success'] * 100) / results['transactions'], '%'
print 'Elapsed time:\t\t\t', results['time'], 'secs'
print 'Data transfered:\t\t', results['size'] / 1024, 'KB'
print 'Average response time:\t\t', results['time'] / results['transactions'], 'secs'
print 'Successful transactions:\t', results['success']
print 'Failed transactions:\t\t', results['failure']
print 'Totaled response times:\t\t', round(results['time'], 3), 'secs'
