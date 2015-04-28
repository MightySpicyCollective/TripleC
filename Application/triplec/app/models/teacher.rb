class Teacher < ActiveRecord::Base
	belongs_to :user

<<<<<<< HEAD
	EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
	validates_presence_of :first_name
	validates_length_of :first_name, :maximum => 20

	validates_presence_of :last_name
	validates_length_of :last_name, :maximum => 20

	validates_presence_of :email
	validates_length_of :email, :maximum => 35
	validates_format_of :email, :with => EMAIL_REGEX
	validates_confirmation_of :email

=======
>>>>>>> 1d20f15900fc6aee83554de8b89ef09b3ed1810f
	# scope :email, lambda { order("teachers.email ASC")}
	# scope :first_name, lambda { order("teachers.first_name ASC")}
	# scope :last_name, lambda { order("teachers.last_name ASC")}
	scope :sorted, lambda { order("teachers.last_name ASC")}
	scope :newest_first, lambda { order("teachers.created_at DESC")}
	scope :search, lambda {|query|
	where(["login LIKE ?", "%#{query}%"])
	}
end
