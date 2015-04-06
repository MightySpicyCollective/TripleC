class AlterUsers < ActiveRecord::Migration
  # def change works for up and down (reversible)
  # rename_table would work for that, but add column wouldn't
  # That's why we're gonna use up and down instead.
  def up
  	# rename_table('users', 'admin_users')
  	# add_column('admin_users', 'username', :string, :limit => 25, :after => 'email')
  	# change_column('admin_users', 'email', :string, limit => 100)
  	# rename_column('admin_users', 'password', 'hashed_password')

  	puts "*** Adding an index is next ***"
  	add_index('users', 'login')
  end

  # Undo everything that up does, in reversed order
  def down
  	remove_index("users", "login")

  	# rename_column('admin_users', 'hashed_password', 'password')  	
  	# change_column('admin_users', 'email', :string, limit => 100)
  	# remove_column('admin_users', 'username')
	# rename_table('admin_users', 'users')
  end
end
