class CreateConditions < ActiveRecord::Migration[5.0]
  def change
    create_table :conditions do |t|
      t.references :field_type, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
