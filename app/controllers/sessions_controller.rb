class SessionsController < ApplicationController
  def create
    @user = User.from_omniauth(auth_hash)
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
  
  def destroy
    # session[:user_id] = nil
    redirect_to root_path
  end
end
