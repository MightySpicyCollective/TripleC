class User < ActiveRecord::Base

	# To configure a different table name:
	# self.table_name = "admin_users"

	has_one :teacher
	has_one :picture

end
