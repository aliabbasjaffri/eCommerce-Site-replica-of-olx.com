class SearchController < ApplicationController
	
	def index
		@ads = Ad.orderNewestFirst
	end

	def results
		if params["category"] != "*"
      		@result = Ad.searcherer(params[:search],params[:category],params[:priceRange])
	    elsif params["category"] == "*"
	      	@result = Ad.search(params[:search])
	    else
	      	@result = Ad.order("created_at DESC")
	    end
	end

end
