class CreateBikeParts < ActiveRecord::Migration[7.0]
  def change
    create_table :bike_parts do |t|
      t.string :type
      t.string :manufacturer
      t.string :make
      t.string :model
      t.string :material
      t.float :size
      t.float :weight
      t.boolean :metric

      t.timestamps
    end
  end
end
