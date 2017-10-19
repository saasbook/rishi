class HomeController < ApplicationController
  def index
    @wards_hash = Ward.all
  end
end
