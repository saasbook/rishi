class HomeController < ApplicationController
  def index
    @api_key = ENV['google_api_key']
    @coordinates = Coordinate.all
    @polygons = []
    @marker_hash = Gmaps4rails.build_markers(@coordinates) do |coordinate, marker|
      marker.lat coordinate.lat
      marker.lng coordinate.lng
    end
    @ward_ids = Ward.uniq.pluck(:id)
    @ward_ids.each do |ward_id|
      coordinates_for_ward = Coordinate.where(:ward_id => ward_id)
      @current_ward_hash = Gmaps4rails.build_markers(coordinates_for_ward) do |coordinate, marker|
        marker.lat coordinate.lat
        marker.lng coordinate.lng
      end
      @polygons.push(@current_ward_hash)
    end
  end
end
