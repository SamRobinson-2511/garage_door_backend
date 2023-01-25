class User < ApplicationRecord
    has_many :garages 
    has_many :bicycles, through: :garages
    has_many :inventories
    has_many :parts, through: :inventories
end
