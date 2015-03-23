class TweegeonctlrController < ApplicationController
	def index
		username = params[:user][:name] rescue nil
		puts username
		if username.to_s != ''
			client = Twitter::REST::Client.new do |config|
				config.consumer_key        = "consumer key comes here"
				config.consumer_secret     = "consumer secret comes here"
				config.access_token        = "access token goes here"
				config.access_token_secret = "access token secret comes here"
			end
			@tweets = client.user_timeline(username)
		end
	end	
end
