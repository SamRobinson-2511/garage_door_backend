class CreateBicycles < ActiveRecord::Migration[7.0]
  def change
    create_table :bicycles do |t|
      t.string :name
      t.string :species
      t.string :frame
      t.string :fork
      t.string :handlebars
      t.string :bar_tape
      t.string :wheel
      t.string :tire
      t.string :headset
      t.string :stem
      t.string :cranks
      t.string :pedals
      t.string :seatpost
      t.string :saddle
      t.string :brake
      t.string :shifter
      t.string :front_d
      t.string :back_d
      t.string :chain
      t.string :image_url

      t.timestamps
    end
  end
end
