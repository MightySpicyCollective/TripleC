class Project < ActiveRecord::Base
	has_and_belongs_to_many :collaborators, :class_name => "User", :join_table => "projects_users"

	# scope :status, lambda { where(:status => 1)}
<<<<<<< HEAD
	validates_presence_of :name
	validates_length_of :name, :maximum => 12
	# validates_presence_of :permalink
	# validates_length_of :permalink, :within => 3..255
	# validates_uniqueness_of :permalink

=======
>>>>>>> 1d20f15900fc6aee83554de8b89ef09b3ed1810f
	scope :sorted, lambda { order("projects.name ASC")}
	scope :newest_first, lambda { order("projects.created_at DESC")}
	scope :search, lambda {|query|
		where(["name LIKE ?", "%#{query}%"])
	}
end
