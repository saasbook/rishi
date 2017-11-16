class Ward < ActiveRecord::Base
    has_many :committees
    has_many :coordinates
    
    
    def coordinates_list()
      coords = self.coordinates
      list_of_coords = []
      coords.each do |c|
        list_of_coords << {lat: c.lat, lng: c.lng}
      end
      list_of_coords
    end
    
    
end