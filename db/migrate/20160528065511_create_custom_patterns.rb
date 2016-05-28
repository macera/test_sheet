class CreateCustomPatterns < ActiveRecord::Migration[5.0]
  def change
    create_table :custom_patterns do |t|
      t.references :custom_head, foreign_key: true
      t.references :condition, foreign_key: true
      t.references :result, foreign_key: true

      t.timestamps
    end
  end
end
