class CustomPattern < ApplicationRecord
  belongs_to :custom_head
  belongs_to :condition
  belongs_to :result
end
