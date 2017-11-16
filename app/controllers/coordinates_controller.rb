class CoordinatesController < ApplicationController
    # Constructs a coordinate associated with a Ward.
    def create
        coordinate = params[:coordinate]
        latitude = coordinate[:latitude]
        longitude = coordinate[:longitude]
        ward = coordinate[:ward]
        Ward.create(name: ward, ward_lat: latitude, ward_long: longitude)
        redirect_to home_index_path
    end
end
