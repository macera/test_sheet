class TestPattern < ApplicationRecord
  belongs_to :condition
  belongs_to :result
  belongs_to :item
end
