class CreateTestPatterns < ActiveRecord::Migration[5.0]
  def change
    create_table :test_patterns do |t|
      t.references :condition, foreign_key: true
      t.references :result, foreign_key: true

      t.timestamps
    end
  end
end
