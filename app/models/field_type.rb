class FieldType < ApplicationRecord
  has_many :conditions
  has_many :results
  has_many :items
end
