class CreateProjects < ActiveRecord::Migration
  def up
    create_table :projects do |t|
    	t.integer "user_id"	# Add link to 'parent' table
    	# Same as t.references :user
		t.string "name", :limit => 12
		t.timestamps null: false
    end
    add_index("projects", "user_id") # Add index to 'parent' table 
    add_index("projects", "name") # Consult often
  end

  def down
  	drop_table :projects
  end
end
