class Item < ApplicationRecord
  belongs_to :section
  belongs_to :field_type
  has_many :test_patterns
end
