class HomeController < ApplicationController
  def index
    @api_key = ENV['google_api_key']
    regions = []
    Ward.all.each do |ward|
      regions << ward.coordinates_list()
    end
    gon.regions = regions
    
    markers = []
    
    Committee.all.each do |c|
      if c.coordinates.size != 0
      
        l = [c.name, c.category, c.coordinates.last.lat, c.coordinates.last.lng]
        markers << l
      end
    end
    gon.markers = markers
   
  end
  
  
  def about
  end
  
end
