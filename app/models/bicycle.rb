class Bicycle < ApplicationRecord
    has_many :bike_parts, dependent: :destroy
    has_many :parts, through: :bike_parts
    has_many :garages, dependent: :destroy
    has_many :users, through: :garages
end
