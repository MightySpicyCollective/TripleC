class Project < ActiveRecord::Base
	has_and_belongs_to_many :collaborators, :class_name => "User", :join_table => "projects_users"
end
