class SessionsController < ApplicationController
  skip_before_filter :require_login
  
  def new
    redirect_to root_url if current_user
  end
  
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to user_path(current_user)
  end
  
  def destroy
    @current_user = session[:user_id] = nil
    redirect_to root_url, :notice => 'Signed out!'
  end
  
  def failure
    flash[:error] = "Authentication failed, please try again." 
    redirect_to root_url
  end
end
