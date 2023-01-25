class User < ApplicationRecord
    has_many :bike_parts
    has_many :bicycles, through: :bike_parts

end
