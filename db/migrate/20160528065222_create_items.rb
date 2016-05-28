class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.references :section, foreign_key: true
      t.references :field_type, foreign_key: true

      t.timestamps
    end
  end
end
