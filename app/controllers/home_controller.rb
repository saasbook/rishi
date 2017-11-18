class HomeController < ApplicationController
  def index
    @api_key = ENV['google_api_key']
    regions = []
    Ward.all.each do |ward|
      regions << ward.coordinates_list()
    end
    gon.regions = regions
  end
  
  def about
  end
  
end
