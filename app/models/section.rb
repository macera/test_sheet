class Section < ApplicationRecord
  belongs_to :area
  has_many :items
end
