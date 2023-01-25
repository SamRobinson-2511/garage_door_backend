class CreateBikeParts < ActiveRecord::Migration[7.0]
  def change
    create_table :bike_parts do |t|
      t.belongs_to :bicycle
      t.belongs_to :part
      t.integer :quantity

      t.timestamps
    end
  end
end
