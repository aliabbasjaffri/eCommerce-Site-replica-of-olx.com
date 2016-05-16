class AccessController < ApplicationController
	
  	before_action :confirm_logged_in, :except => [:login , :attempt_login , :logout]

  	def login
  	end

  	def attempt_login
  		if params[:email].present? && params[:password].present?
	      	found_user = User.where(:email => params[:email]).first
	      	
	      	if found_user
	        	authorized_user = found_user.authenticate(params[:password])
	        else
	        end
	    else
	    end

	    if authorized_user
	    	# mark user as logged in
	      	session[:user_id] = authorized_user.id
	      	session[:username] = authorized_user.firstName
	      	flash[:notice] = "You are now logged in."
	      	redirect_to(:controller => 'user'  , :action => 'index')
	    else
	      	flash[:notice] = "Invalid username/password combination."
	      	redirect_to(:action => 'login')
	    end
  	end

  	def logout
  		session[:user_id] = nil
    	session[:username] = nil
    	flash[:notice] = "Logged out"
    	redirect_to(:controller => 'search' , :action => "index")
  	end

end
