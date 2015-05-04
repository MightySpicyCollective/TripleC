class School < ActiveRecord::Base
	has_many :users

	validates_presence_of :name
	validates_length_of :name, :maximum => 50

	validates_presence_of :city
	validates_length_of :city, :maximum => 20

	validates_presence_of :country
	validates_length_of :country, :maximum => 20

	scope :sorted, lambda { order("schools.name ASC")}
	scope :newest_first, lambda { order("schools.created_at DESC")}
	scope :search, lambda {|query|
		where(["name LIKE ?", "%#{query}%"])
	}
end
