class Picture < ActiveRecord::Base
	belongs_to :user

<<<<<<< HEAD
	validates_presence_of :url
	validates_length_of :url, :maximum => 35

=======
>>>>>>> 1d20f15900fc6aee83554de8b89ef09b3ed1810f
	scope :sorted, lambda { order("pictures.url ASC")}
	scope :newest_first, lambda { order("pictures.created_at DESC")}
	scope :search, lambda {|query|
		where(["name LIKE ?", "%#{query}%"])
	}
end
