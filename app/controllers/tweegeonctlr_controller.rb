class TweegeonctlrController < ApplicationController
	def index
		username = params[:user][:name] rescue nil
		puts username
		if username.to_s != ''
			client = Twitter::REST::Client.new do |config|
				config.consumer_key        = "your consumer key"
				config.consumer_secret     = "your consumer secret"
				config.access_token        = "your access token"
				config.access_token_secret = "your access token secret"
			end
			@tweets = client.user_timeline(username)
		end
	end	
end
