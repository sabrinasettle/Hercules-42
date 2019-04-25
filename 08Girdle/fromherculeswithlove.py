# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    fromherculeswithlove.py                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssettle <ssettle@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/20 12:44:32 by ssettle           #+#    #+#              #
#    Updated: 2019/04/24 15:32:21 by ssettle          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/env python

import os
import ssl
import time
import getpass
import smtplib

from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
# introduces the ability to encode in the email for images for gifs
from email import encoders

def baby_tell_me_what_you_want():
	sender = raw_input('With love from : (enter Herc) ') # gets the email address of Herc
	if sender == "Herc":
		sender = "hercloveshippo08@gmail.com"
		# uses the getpass to get the password
		senderpasswd = getpass.getpass("Herc's email password: ")
		recipient = raw_input('hey whats your intra id?: (seriously enter your intra) ')
		if '@' not in recipient: #adds the address to the intra login
			recipient = recipient + '@student.42.us.org'
	elif sender != "Herc": # catch for input
		print ("This won't work if you dont work WITH me")

	msg = MIMEMultipart()
	msg['To'] = recipient
	msg['From'] = sender
	msg['Subject'] = 'WYD'

	html = """\
	<html>
		<body>
			<p>hey<br>
			hey<br>
			hey<br>
			nice girdle<br>
			<3 Herc
			</p>
		</body>
	</html>
	"""
	body = MIMEText(html, 'html')
	msg.attach(body)

	print('Connecting to the SMTP') # gets to this but doesnt send the email
	# context = ssl.create_default_context()
	try:
		# Gmail SMTP
		smtp = smtplib.SMTP('smtp.gmail.com', 587)
		# Begin verfication of the connection to the SMTP gmail client
		smtp.ehlo()
		# Securing with TLS
		smtp.starttls()
		smtp.ehlo()
		print ('Logging in...')
		smtp.login(sender, senderpasswd)
		thiccbody = msg.as_string()
		smtp.sendmail(sender, recipient, thiccbody)
		print ("BOOTY CALL SENT")
	except:
		print ("OH DEAR NO GIRDLE FOR YOU HERC </3")
	finally:
		smtp.quit()

while True:
	start = raw_input('Hey you wanna send an email? (y/n) ')
	if start == 'y' or start == 'Y':
		baby_tell_me_what_you_want()
	elif start == 'n' or start == 'N':
		print ('Cool bye!!')
		quit()
