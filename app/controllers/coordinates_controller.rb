class CoordinatesController < ApplicationController
    def coordinate_params
        params.require(:coordinate).permit(:lat, :lng)
    end
    
    def return_lat(param)
        param[:latitude]
    end
    
    def return_lng(param)
        param[:longitude]
    end
    
    def return_ward_name(param)
        param[:ward_name]
    end
    
    def return_marker_name(param)
        param[:marker_name]
    end
    
    def create
        
        input_lat = return_lat(params[:coordinate])
        input_lng = return_lng(params[:coordinate])
        input_ward_name = return_ward_name(params[:ward])
        input_marker_name = return_marker_name(params[:marker])
        
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
