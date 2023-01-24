class AddBelongsToBikeParts < ActiveRecord::Migration[7.0]
  def change
    add_column :bike_parts, :belongs_to, :garage
  end
end
