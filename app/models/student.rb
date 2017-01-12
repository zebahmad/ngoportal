class Student < ApplicationRecord
	has_many :requirements
	has_many :users, through: :requirements

	validates :full_name, uniqueness: true, presence: true
	validates :grade, presence: true
	VALID_DATE_REGEX = /\A\d{2}-\d{2}-\d{4}\z/i
	validates :dob, presence: true, format: { with: VALID_DATE_REGEX }

	validates :place_of_birth, presence: true
end
