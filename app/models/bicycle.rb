class Bicycle < ApplicationRecord
    has_many :bike_parts
    has_many :parts, through: :bike_parts
    has_many :garages
    has_many :users, through: :garages


    
end
