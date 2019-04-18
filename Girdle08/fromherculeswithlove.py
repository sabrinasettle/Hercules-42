# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    fromherculeswithlove.py                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssettle <ssettle@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/20 12:44:32 by ssettle           #+#    #+#              #
#    Updated: 2019/04/17 21:16:22 by ssettle          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Mandorty part: Send an email out to warriors to join your army! Write a program that uses SMTP to send email

import smtplib
import ssl #needed?
import os
import sys
import time
import getpass

from email.MIMEMultipart import MIMEMultipart
from email.MIMEText import MIMEtext

sender = input("With love from : (enter Herc)")
senderpasswd = getpass.getpass("Herc's email password: ")
recipient = input('hey whats your intra id?: (seriously enter your intra)')


subject = 'WYD'
body = 'But seriously gurl, nice girdle'
bye = '<3 Herc'

if sender == "Herc"
	sender = "ssettle93@gmail.com" #maybe change for later??
if '@' not in recipient:
	recipient = recipient + '@student.42.us.org'

try:
	smtp = stmplib.SMTP('smtp.gmail.com', 587)
	smtp.starttls()
	smtp.login(sender, senderpasswd);
	smtp.sendmail(sender, recipient, message)
	smtp.quit()
	print ("Message sent")
except:
	print ("OH DEAR NO GIRDLE FOR YOU HERC <3")










print 'Email sent successfully'
