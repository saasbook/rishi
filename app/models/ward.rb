class Ward < ActiveRecord::Base
    has_many :committees
    has_many :coordinates


    def self.build_markers
      wards = Ward.all
      #coordinates = Coordinate.all
      marker_hash = Gmaps4rails.build_markers(wards) do |ward, marker|
        marker.lat ward.ward_lat
        marker.lng ward.ward_long
      end
      return marker_hash
    end
    
    def self.build_ward_overlay(ward)
      regions = []
        ward_coordinates = ward.coordinates
        @ward_marker_hash = Gmaps4rails.build_markers(ward_coordinates) do |coordinate, marker|
          marker.lat coordinate.lat
          marker.lng coordinate.lng
        end
        regions.push(@ward_marker_hash)
      return regions
    end
end