class Project < ActiveRecord::Base
	has_and_belongs_to_many :collaborators, :class_name => "User", :join_table => "projects_users"

	# scope :status, lambda { where(:status => 1)}
	scope :sorted, lambda { order("projects.name ASC")}
	scope :newest_first, lambda { order("projects.created_at DESC")}
	scope :search, lambda {|query|
		where(["name LIKE ?", "%#{query}%"])
	}
end
