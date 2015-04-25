class User < ActiveRecord::Base

	# To configure a different table name:
	# self.table_name = "admin_users"
	belongs_to :school
	has_one :teacher
	has_one :picture
	has_and_belongs_to_many :projects, :join_table => "projects_users"

	scope :status, lambda { where(:status => 1)}
	scope :sorted, lambda { order("users.login ASC")}
	scope :newest_first, lambda { order("users.created_at DESC")}
	scope :search, lambda {|query|
		where(["login LIKE ?", "%#{query}%"])
	}
end
