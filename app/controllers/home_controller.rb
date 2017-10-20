class HomeController < ApplicationController
  def index
    @api_key = ENV['google_api_key']
    puts @api_key
    @coordinates = Coordinate.all
    @marker_hash = Gmaps4rails.build_markers(@coordinates) do |coordinate, marker|
      marker.lat coordinate.lat
      marker.lng coordinate.lng
    end
  end
end
