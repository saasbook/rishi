class Ward < ActiveRecord::Base
    has_many :committees
    has_many :coordinates
    
    def self.build_ward_overlay(ward)
      if (ward == nil)  then
        return
    end
      regions = []
      ward_coordinates = ward.coordinates
      @ward_marker_hash = Gmaps4rails.build_markers(ward_coordinates) do |coordinate, marker|
        marker.lat coordinate.lat
        marker.lng coordinate.lng
      end
      if @ward_marker_hash.size > 0
        regions.push(@ward_marker_hash)
      end
      return regions
    end
    
end