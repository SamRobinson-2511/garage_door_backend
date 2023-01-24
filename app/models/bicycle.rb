class Bicycle < ApplicationRecord
    belongs_to :garage
    has_many :bike_parts
end
