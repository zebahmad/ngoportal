class ChildSponsorship < ApplicationRecord
  belongs_to :child
  belongs_to :sponsor
end
