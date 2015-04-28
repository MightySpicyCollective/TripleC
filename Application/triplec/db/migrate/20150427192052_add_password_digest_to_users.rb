class AddPasswordDigestToUsers < ActiveRecord::Migration
  def up
  	remove_column "users", "password_digest"
  	add_column "users", "password", :string
  end

  def down
  	add_column "users", "password_digest", :string, :limit => 12
  	remove_column "users", "password"
  end

end
