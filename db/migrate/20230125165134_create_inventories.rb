class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.belongs_to :user
      t.belongs_to :part
      t.integer :quantity

      t.timestamps
    end
  end
end
