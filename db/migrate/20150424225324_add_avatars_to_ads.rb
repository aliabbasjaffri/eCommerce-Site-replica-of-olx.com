class AddAvatarsToAds < ActiveRecord::Migration
  	
  	def up
    	change_table :ads do |t|
      		t.attachment :avatar
    	end
  	end

  	def down
    	drop_attached_file :ads, :avatar
  	end
end
