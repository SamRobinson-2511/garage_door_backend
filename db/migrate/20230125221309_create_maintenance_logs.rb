class CreateMaintenanceLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenance_logs do |t|
      t.belongs_to :bicycle, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
