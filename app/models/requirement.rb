class Requirement < ApplicationRecord
	belongs_to :student
	belongs_to :user
	has_one :sponsorship_d

	attr_accessor :full_name
	validates :rtype, presence: true
	validates :cost, presence: true
	validates :description, presence: true
end
