class CreateScreens < ActiveRecord::Migration[5.0]
  def change
    create_table :screens do |t|
      t.string :name
      t.boolean :copy_flag
      t.text :remark
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
