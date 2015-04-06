class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
    	t.integer "user_id"	# Add link to 'parent' table
    	
    	t.string "first_name", :limit => 20
    	t.string "last_name", :limit => 20
    	t.string "email", :limit => 35
		t.timestamps null: false
    end
    add_index("teachers", "user_id") # Add index to 'parent' table
  end
end
