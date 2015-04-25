class School < ActiveRecord::Base
	has_many :users

	scope :sorted, lambda { order("schools.name ASC")}
	scope :newest_first, lambda { order("schools.created_at DESC")}
	scope :search, lambda {|query|
		where(["name LIKE ?", "%#{query}%"])
	}
end
