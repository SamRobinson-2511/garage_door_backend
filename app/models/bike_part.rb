class BikePart < ApplicationRecord
    belongs_to :bicycle
    belongs_to :part 
end
