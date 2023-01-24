class Garage < ApplicationRecord
  belongs_to :user
  has_many :bike_parts
  
  
end
