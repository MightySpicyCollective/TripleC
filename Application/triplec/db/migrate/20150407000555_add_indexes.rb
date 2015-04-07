class AddIndexes < ActiveRecord::Migration
  def up
  	add_column("users", "school_id", :integer)
  	add_index("users", "school_id")
  	
  	add_column("pictures", "user_id", :integer)
  	add_index("pictures", "user_id")  	

  	add_column("teachers", "user_id", :integer)
  	add_index("teachers", "user_id")

  	add_column("projects", "user_id", :integer)
  	add_index("projects", "user_id")
  end

  def down
	remove_index("projects", "user_id")
  	remove_column("projects", "user_id")

	remove_index("teachers", "user_id")
  	remove_column("teachers", "user_id")  	
  	
  	remove_index("pictures", "user_id")  	
  	remove_column("pictures", "user_id")
  	
	remove_index("users", "school_id")
  	remove_column("users", "school_id")
  end  
end
