class Student < ApplicationRecord
	has_many :requirements
	has_many :users, through: :requirements

	validates :full_name, uniqueness: true
end
