class AddColumnsToBikePart < ActiveRecord::Migration[7.0]
  def change
    add_column :bike_parts, :component, :string
    add_column :bike_parts, :make, :string
    add_column :bike_parts, :model, :string
    add_column :bike_parts, :material, :string
    add_column :bike_parts, :size, :float
    add_column :bike_parts, :metric, :boolean
    add_column :bike_parts, :weight, :float
    add_column :bike_parts, :price, :float
  end
end
