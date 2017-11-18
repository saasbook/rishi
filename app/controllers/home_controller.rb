class HomeController < ApplicationController
  def index
    @api_key = ENV['google_api_key']
    #@wards = Ward.all
    #@coordinates = Coordinate.all
    
    #@marker_hash = Gmaps4rails.build_markers(@wards) do |ward, marker|
    #    marker.lat ward.ward_lat
    #    marker.lng ward.ard_long
    #    marker.infowindow render_to_string(:partial => "/committees/popup_partial", :locals => { :object => ward})
    #end
    regions = []
    Ward.all.each do |ward|
      regions << ward.coordinates_list()
    end
    gon.regions = regions
  end
  
  def about
  end
  
  # def authen
  # #   session[:return_to] = request.referer
  # #   render :layout => 'authorize'
  # # end
  
  # def back
  #   if session[:return_to]
  #     redirect_to session[:return_to]
  #   else
  #     redirect_to root_path
  #   end
  # end
end
