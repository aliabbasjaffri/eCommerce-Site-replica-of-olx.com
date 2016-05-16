class CreateUsers < ActiveRecord::Migration
	
	def up
    	create_table :users do |t|
    		t.string "firstName" , :limit => 50 , :null => false
    		t.string "lastName" , :limit => 50
    		t.string "email" , :null => false
    		t.string "password" , :limit => 30 , :null => false
    		t.integer "rating" , :default => 0
    		t.string "location" , :default => "Lahore"
      	t.timestamps null: false
    	end
  	end

  	def down
  		drop_table :users
  	end
end

#user = User.new(:firstName => "" , :lastName => "" , :email => "" , :password => "" , :rating => "" , :location => "")
