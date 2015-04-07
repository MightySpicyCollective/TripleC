class RemoveUserColumns < ActiveRecord::Migration
  def up
  	puts "*** Removing school and picture from USERS ***"  	
    remove_column("users", "school_id")
    remove_column("users", "picture_id")
    remove_column("projects", "user_id")    
    remove_column("teachers", "user_id")
    remove_column("pictures", "user_id")
  end
  def down
    add_column("pictures", "user_id")
    add_column("teachers", "user_id")
	add_column("projects", "user_id")
    add_column("users", "picture_id", :integer)
    add_column("users", "school_id", :integer)
  end
end
