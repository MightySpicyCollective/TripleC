class AddNameAndEmailToUsers < ActiveRecord::Migration
  def up
  	# add_column "users", "name", :string, :limit => 20
  	add_column "users", "email", :string
  end

  def down
  	remove_column "users", "email"
  	# remove_column "users", "name"
  end
end
