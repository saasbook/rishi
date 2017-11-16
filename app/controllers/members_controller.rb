class MembersController < ApplicationController
    # Passes in @member to form_tag in /members.
    def index
        user_id = session[:user_id]
        @member = User.find_by_uid(user_id)
    end
end
