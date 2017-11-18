class Coordinate < ActiveRecord::Base
    belongs_to :wards

  

    def gmaps4rails_address
        "#{lng}, #{lat}" 
    end
end
