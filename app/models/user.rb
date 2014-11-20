class User < ActiveRecord::Base
	has_many :boards
	has_many :pins

	validates :name, presence: true
	# {in: 2..10} means length must be 2-10 characters..using range function
	validates :name, length: {in: 2..10}
end
