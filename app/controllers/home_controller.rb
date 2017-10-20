class HomeController < ApplicationController
  def index
    Rails.logger.warn("### PUBLIC KEY IS #{ENV['google_api_key'].inspect}")
    puts ENV['google_api_key']
    puts "//maps.google.com/maps/api/js?key=" + ENV['google_api_key']
    @coordinates = Coordinate.all
    @marker_hash = Gmaps4rails.build_markers(@coordinates) do |coordinate, marker|
      marker.lat coordinate.lat
      marker.lng coordinate.lng
    end
  end
end
