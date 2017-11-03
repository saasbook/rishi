class HomeController < ApplicationController
  def index
    @api_key = ENV['google_api_key']
    @wards = Ward.all
    @coordinates = Coordinate.all
    @marker_hash = Gmaps4rails.build_markers(@wards) do |ward, marker|
        marker.lat ward.ward_lat
        marker.lng ward.ward_long
        marker.infowindow render_to_string(:partial => "/committees/popup_partial", :locals => { :object => ward})
    end
    
    @regions_1 = Ward.build_ward_overlay(Ward.find_by_name("Ward 1"))
    @regions_2 = Ward.build_ward_overlay(Ward.find_by_name("Ward 2"))
    @regions_3 = Ward.build_ward_overlay(Ward.find_by_name("Ward 3"))
    @regions_4 = Ward.build_ward_overlay(Ward.find_by_name("Ward 4"))
    @regions_5 = Ward.build_ward_overlay(Ward.find_by_name("Ward 5"))
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
