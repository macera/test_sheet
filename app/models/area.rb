class Area < ApplicationRecord
  belongs_to :screen
  has_many :sections
end
