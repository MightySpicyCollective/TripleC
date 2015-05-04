class Picture < ActiveRecord::Base
	belongs_to :user

	validates_presence_of :url
	validates_length_of :url, :maximum => 35

	scope :sorted, lambda { order("pictures.url ASC")}
	scope :newest_first, lambda { order("pictures.created_at DESC")}
	scope :search, lambda {|query|
		where(["name LIKE ?", "%#{query}%"])
	}
end
