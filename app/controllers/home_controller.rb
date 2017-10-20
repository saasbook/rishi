class HomeController < ApplicationController
  def index
    @coordinates = Coordinate.all
    @marker_hash = Gmaps4rails.build_markers(@coordinates) do |coordinate, marker|
      marker.lat coordinate.lat
      marker.lng coordinate.lng
    end
    puts @marker_hash
  end
end
