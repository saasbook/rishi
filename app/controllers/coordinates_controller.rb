class CoordinatesController < ApplicationController
    def coordinate_params
        params.require(:coordinate).permit(:lat, :lng)
    end
    
    def create
        input_coordinate = params[:coordinate]
        input_lat = input_coordinate[:latitude]
        input_lng = input_coordinate[:longitude]
        input_ward = params[:ward]
        input_ward_name = input_ward[:ward_name]
        input_marker = params[:marker]
        input_marker_name = input_marker[:marker_name]
        
        if Coordinate.exists?(:lat => input_lat, :lng => input_lng)
            flash[:notice] = 'Marker already exists at this coordinate'
            redirect_to members_path
        else
            if Ward.exists?(:name => input_ward_name)
                ward = Ward.find_by_name(input_ward_name)
            else
                ward = Ward.create(:name => input_ward_name)
            end
            
            coord = Coordinate.create(:lat => input_lat, :lng => input_lng)

            if Committee.exists?(:name => input_marker_name) 
                comm = Committee.find_by_name(input_marker_name)
            else
                comm = Committee.create(:name => input_marker_name)
            end
            
            comm.ward = ward
            comm.coordinates << coord
            comm.save!
            redirect_to members_path
        end
    end
    
    def destroy 
        id = params[:id]
        coord = Coordinate.find_by_id(id)
        coord.destroy!
        redirect_to members_path
    end
    
    def edit
        @coordinate = Coordinate.find(params[:id])
        @member = User.find(params[:member_id])
    end
    
    def update
        @coordinate = Coordinate.find(params[:id])
        @coordinate.update_attributes!(coordinate_params)
        flash[:notice] = "Marker was successfully updated."
        redirect_to members_path
    end
end
