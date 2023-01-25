class Bicycle < ApplicationRecord
    has_many :bike_parts
    has_many :users, through: :bike_parts


    
end
