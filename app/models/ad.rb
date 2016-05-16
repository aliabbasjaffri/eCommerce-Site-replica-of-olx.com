class Ad < ActiveRecord::Base
	
	belongs_to :user

	scope :orderNewestFirst , lambda { order("id DESC") }
	
	has_attached_file :avatar, :styles => { :medium => "300x300", :thumb => "100x100" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	def self.search(query)
  	where("title like ?", "%#{query}%") 
	end

	def self.searcherer(query , category, price )
  	where("title like ? and category like ? and priceRange <= ?","%#{query}%" , "%#{category}%"  ,"#{price}" ) 
	end
  
end
