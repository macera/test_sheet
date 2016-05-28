class CreateCustomHeads < ActiveRecord::Migration[5.0]
  def change
    create_table :custom_heads do |t|
      t.string :name

      t.timestamps
    end
  end
end
