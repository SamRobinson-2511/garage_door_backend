class CreateParts < ActiveRecord::Migration[7.0]
  def change
    create_table :parts do |t|
      t.string :component
      t.string :make
      t.string :model
      t.string :material
      t.string :size
      t.boolean :metric
      t.float :weight
      t.float :price
      t.string :species

      t.timestamps
    end
  end
end
