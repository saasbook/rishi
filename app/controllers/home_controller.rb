class HomeController < ApplicationController
  def index
    @api_key = ENV['google_api_key']
    @wards = Ward.all
    @coordinates = Coordinate.all
    @marker_hash = Ward.build_markers
    @regions = Ward.build_ward_overlay
  end
end
