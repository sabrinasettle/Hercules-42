#!/bin/ruby

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    find_my_friends.rb                                 :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssettle <ssettle@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/11 17:56:20 by ssettle           #+#    #+#              #
#    Updated: 2019/03/12 19:01:48 by ssettle          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

require 'oauth2'

client = OAuth2::Client.new(
	ENV['UIDHEARTKEY'],
	ENV['SECRETHEARTKEY'],
	site: "https://api.intra.42.fr")
token = client.client_credentials.get_token

if ARGV.length == 0
	abort "NOT ENOUGH FRIENDS :( \n"
elsif ARGV.length > 1
	abort "TOO MANY FRIENDS :( \n"
elsif ARGV.length == 1
	puts "CORRECT AMOUNT OF FRIENDS :)"
	if (File.extname(ARGV[0]) != ".txt")
		puts "NOT CORRECT FILE FRIEND"
	end
end

# def server_down
# 	begin
# 		reponse = token.get("/v2/users/#{login}/locations")
# 		while reponse.status != 200
# 			puts "Server is not a FRIEND... YET"
# 			sleep(5)
# 			if reponse.status == 200
# 				break
# 		end
# 	end
# end
if (ARGV[0] && File.extname(ARGV[0]) == ".txt")
	File.open(ARGV[0], "r") do |f|
			f.each_line do |line|
				login = line.chomp
				begin
					response = token.get("/v2/users/#{login}/locations?filter[active]=true").parsed
					if response[0]
						host = response[0]["host"]
						puts "FRIEND <3 #{login} is at computer #{host}. \n"
					elsif
						puts "FRIEND #{login} is away having tea. \n"
					end
				rescue
					puts "UH OH FRIEND #{login} not a FRIEND ... YET. \n"
				end
			end
	end
end
