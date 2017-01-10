class Requirement < ApplicationRecord
	belongs_to :student
	belongs_to :user
	has_one :sponsorship_d

	attr_accessor :full_name
end
