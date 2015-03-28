class TweegeonctlrController < ApplicationController
	def index
		flag = 1
		username = params[:user][:name] rescue nil
		puts username
		if username.to_s != ''
			client = Twitter::REST::Client.new do |config|
				config.consumer_key        = "your consumer key"
				config.consumer_secret     = "your consumer secret"
				config.access_token        = "your access token"
				config.access_token_secret = "your access token secret"
			end
			begin
				user_obj = client.user(username)
			rescue => e
				puts "****************Error occured***************"
				puts "#{e}"
				puts "**************************************************"
				@response = e
				flag = 0
			end
			if flag == 1
				if username.eql?(user_obj.screen_name)
					@tweets = client.user_timeline(username)
				else
					if username.eql?(user_obj.name)
						@tweets = client.user_timeline(username)
					end
				end
			else
				@tweets = ''
			end
		end
	end	
end
