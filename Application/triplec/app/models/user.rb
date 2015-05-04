class User < ActiveRecord::Base

	# To configure a different table name:
	# self.table_name = "admin_users"
	has_secure_password
	
	belongs_to :school
	has_one :teacher
	has_one :picture
	has_and_belongs_to_many :projects, :join_table => "projects_users"
	#image uploader
	mount_uploader :image, ImageUploader

	validates_presence_of :login
	# validates_length_of :login, :maximum => 12
	validates :login, :length => { :maximum => 12 },
                       :uniqueness => true

	scope :status, lambda { where(:status => 1)}
	scope :sorted, lambda { order("users.login ASC")}
	scope :newest_first, lambda { order("users.created_at DESC")}
	scope :search, lambda {|query|
		where(["login LIKE ?", "%#{query}%"])
	}
end
