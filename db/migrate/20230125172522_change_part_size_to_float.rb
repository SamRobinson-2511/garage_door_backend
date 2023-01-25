class ChangePartSizeToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :parts, :size, :float
  end
end
