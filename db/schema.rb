

ActiveRecord::Schema[7.0].define(version: 2023_01_25_192740) do
  create_table "bicycles", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.string "frame"
    t.string "fork"
    t.string "handlebars"
    t.string "bar_tape"
    t.string "wheel"
    t.string "tire"
    t.string "headset"
    t.string "stem"
    t.string "cranks"
    t.string "pedals"
    t.string "seatpost"
    t.string "saddle"
    t.string "brake"
    t.string "shifter"
    t.string "front_d"
    t.string "back_d"
    t.string "chain"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bike_parts", force: :cascade do |t|
    t.integer "bicycle_id"
    t.integer "part_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bicycle_id"], name: "index_bike_parts_on_bicycle_id"
    t.index ["part_id"], name: "index_bike_parts_on_part_id"
  end

  create_table "garages", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "bicycle_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bicycle_id"], name: "index_garages_on_bicycle_id"
    t.index ["user_id"], name: "index_garages_on_user_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "user_id"
    t.integer "part_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_id"], name: "index_inventories_on_part_id"
    t.index ["user_id"], name: "index_inventories_on_user_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "component"
    t.string "make"
    t.string "model"
    t.string "material"
    t.float "size"
    t.boolean "metric"
    t.float "weight"
    t.float "price"
    t.string "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  add_foreign_key "garages", "bicycles"
  add_foreign_key "garages", "users"
end
