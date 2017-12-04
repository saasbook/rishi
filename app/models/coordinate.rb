class Coordinate < ActiveRecord::Base
    belongs_to :wards
    belongs_to :committees
end
