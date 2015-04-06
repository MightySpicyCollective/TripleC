class AddToUser < ActiveRecord::Migration
  def up
  	puts "*** Adding school and picture to USERS ***"
    add_column("users", "picture_id", :integer)
    add_column("users", "school_id", :integer)
    add_index("users", "picture_id")
    add_index("users", "school_id")    	
  end
  def down
    remove_index("users", "school_id")
    remove_index("users", "picture_id")
    remove_column("users", "school_id")
    remove_column("users", "picture_id")    	
  end
end
