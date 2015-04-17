class User < ActiveRecord::Base

	# To configure a different table name:
	# self.table_name = "admin_users"
	belongs_to :school
	has_one :teacher
	has_one :picture
	has_many :projects

end
