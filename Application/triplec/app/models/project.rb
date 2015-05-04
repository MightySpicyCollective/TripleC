class Project < ActiveRecord::Base
	has_and_belongs_to_many :collaborators, :class_name => "User", :join_table => "projects_users"

	mount_uploader :code, CodeUploader

	# scope :status, lambda { where(:status => 1)}
	validates_presence_of :name
	validates_length_of :name, :maximum => 12
	# validates_presence_of :permalink
	# validates_length_of :permalink, :within => 3..255
	# validates_uniqueness_of :permalink

	scope :sorted, lambda { order("projects.name ASC")}
	scope :newest_first, lambda { order("projects.created_at DESC")}
	scope :search, lambda {|query|
		where(["name LIKE ?", "%#{query}%"])
	}
end
