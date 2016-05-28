class AddItemToTestPatterns < ActiveRecord::Migration[5.0]
  def change
    add_reference :test_patterns, :item, index: true
  end
end
