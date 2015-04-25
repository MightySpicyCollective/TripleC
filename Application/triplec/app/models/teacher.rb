class Teacher < ActiveRecord::Base
	belongs_to :user

	# scope :email, lambda { order("teachers.email ASC")}
	# scope :first_name, lambda { order("teachers.first_name ASC")}
	# scope :last_name, lambda { order("teachers.last_name ASC")}
	scope :sorted, lambda { order("teachers.last_name ASC")}
	scope :newest_first, lambda { order("teachers.created_at DESC")}
	scope :search, lambda {|query|
	where(["login LIKE ?", "%#{query}%"])
	}
end
