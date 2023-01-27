class Part < ApplicationRecord
    has_many :bike_parts
    has_many :bicycles, through: :bike_parts
    has_many :inventories
    has_many :users, through: :inventories 
end
