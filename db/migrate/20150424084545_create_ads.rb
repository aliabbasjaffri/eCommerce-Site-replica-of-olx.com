class CreateAds < ActiveRecord::Migration
	def up
    	create_table :ads do |t|
        t.references :user
    		t.string "title" , :null => false
    		t.string "category" , :null => false
    		t.text "description" 
    		t.string "priceRange" , :null => false
      	t.timestamps null: false
    	end
      add_index("ads" , "user_id")
  	end

  	def down
  		drop_table :ads
  	end

end


#ad = Ad.new(:title => "" , :category => "" , :description => "" , :priceRange => "")