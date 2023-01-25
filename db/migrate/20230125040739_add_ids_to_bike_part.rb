class AddIdsToBikePart < ActiveRecord::Migration[7.0]
  def change
    add_column :bike_parts, :user_id, :integer
    add_column :bike_parts, :bicycle_id, :integer
  end
end
