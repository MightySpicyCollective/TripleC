class ChangePasswordDigestLimit < ActiveRecord::Migration
  def up
  	remove_column "users", "password_digest"
  	add_column "users", "password_digest", :string
  end

  def down
  	add_column "users", "password_digest", :string, :limit => 20
  	remove_column "users", "password_digest"
  end
end
