class Result < ApplicationRecord
  belongs_to :field_type
  has_many :test_patterns
end
