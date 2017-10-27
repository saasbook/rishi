class HomeController < ApplicationController
  def index
    @api_key = ENV['google_api_key']
    @wards = Ward.all
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
  
  def about
  end
  
  def authen
    session[:return_to] = request.referer
    render :layout => 'authorize'
  end
  
  def back
    if session[:return_to]
      redirect_to session[:return_to]
    else
      redirect_to root_path
    end
  end
end
