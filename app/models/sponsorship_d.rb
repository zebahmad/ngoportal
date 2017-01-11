class SponsorshipD < ApplicationRecord
	belongs_to :requirement
	belongs_to :user

	validates :amount, presence: true
end
