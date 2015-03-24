class TweegeonctlrController < ApplicationController
	def index
		username = params[:user][:name] rescue nil
		puts username
		if username.to_s != ''
			client = Twitter::REST::Client.new do |config|
				config.consumer_key        = "aGzYCh7xPSXOYdOOPDAOSdEgn"
				config.consumer_secret     = "Lhn7bn3CCOA09lOdmiyOGeLwc0fjJlPpSSkZ4O0fCzj3Q8WW59"
				config.access_token        = "2693666210-tRwFYClnoD2fcgPVUtf3HBQJY3Kkj9cnwywRLjG"
				config.access_token_secret = "KNnwLzm47YIzpIuQ1hiK2jsUMtpqgcGvbYTa1DSP44eeO"
			end
			@tweets = client.user_timeline(username)
		end
	end	
end
