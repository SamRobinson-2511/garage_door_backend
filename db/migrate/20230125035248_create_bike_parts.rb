class CreateBikeParts < ActiveRecord::Migration[7.0]
  def change
    create_table :bike_parts do |t|
      t.string :name
      t.string :species

      t.timestamps
    end
  end
end
