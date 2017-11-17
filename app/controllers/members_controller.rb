class MembersController < ApplicationController
    before_action :check_login

    def check_login
        if session[:user_id] == nil
            redirect_to root_path, error: 'Please log in to access this page.'
            return
        else
            return
        end
    end
     
    def index
    end

end
