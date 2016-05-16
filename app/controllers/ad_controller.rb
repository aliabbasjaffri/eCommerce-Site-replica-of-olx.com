class AdController < ApplicationController
  	
    before_action :confirm_logged_in , :except => [:show]

  	def index
  		@ads = Ad.orderNewestFirst
  	end

  	def new
  		@ad = Ad.new()
  	end

  	def create
      @user = User.find(session[:user_id])

  		@ad = Ad.new(ad_params)

	    if @user.ads << @ad
	    	flash[:notice] = "Ad created Successfully"
	    	redirect_to(:controller => 'user' , :action => 'index')
	    else
	      	render('new')
	    end
  	end

  	def show
  		@ad = Ad.find(params[:id])
  	end

  	def ad_params
      params.require(:ad).permit(:title, :category, :description , :priceRange, :avatar )
    end
end
