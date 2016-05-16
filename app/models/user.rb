require "koala"

class User < ActiveRecord::Base

	has_many :ads
	
	has_secure_password

	has_attached_file :avatar, :styles => { :medium => "300x300", :thumb => "100x100" }
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  	def self.searchID(query)
    	where("id like ?", "#{query}") 
  	end

  	def self.facebook
  		@oauth_token = "CAACEdEose0cBADDi20ZB8ZBiZAxZCTzOsiKFdKAi7WWiXCwnZCgV1YLKNHAx4VfaLja3XOBbDQnspGGbZCCtZBPctDHdJdIJE9xVc4P9FJeMjhqcnMO506suETQyeZBW9OizfOKPrFT12MuGavnUx6oT0aEYMGSSFYPehycn8uS1ZAPjZBKaecmCbpKtQySDeps8VxJfR0sb7MzwVEy7cacmvc"
  		@app_secret = "360cba881f4b9f97e3ba9d6a8d8cf0eb"
  		@api_key = "104557599881620"
  		

  	 	#@oauth = Koala::Facebook::OAuth.new(@api_key, @app_secret, 'http://localhost:3000/user/index')
  	  # @oauth.url_for_oauth_code(:permissions => "publish_stream")
  		#@oauth.url_for_access_token(code)
  		#@oauth.get_app_access_token

      

  		@facebook = Koala::Facebook::API.new(@oauth_token)#, @app_secret)
      #@facebook.url_for_oauth_code(:permissions => "publish_stream")

  	#def self.koala(auth)
    #	access_token = auth['token']
    #	facebook = Koala::Facebook::API.new(access_token)
  	#	facebook.put_wall_post("Testing from ROR")
  	end



end
