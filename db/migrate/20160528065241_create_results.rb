class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.references :field_type, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
