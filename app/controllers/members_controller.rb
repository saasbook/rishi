class MembersController < ApplicationController
    # Passes in @member to form_tag in /members.
    before_action :check_login

    def check_login
        if session[:user_id] == nil
            flash[:notice] = "Please log in to access this page."
            redirect_to root_path, error: 'Please log in to access this page.'
            return
        elsif !User.check_member(session[:user_id])
            flash[:notice] = "Please request to be added as a Rishi member"
            redirect_to root_path, error: 'Please request to be added as a Rishi member'
            return
        end
    end
     
    def index
        user_id = session[:user_id]
        @member = User.find_by_uid(user_id)
        @committees = Committee.all
    end
end
