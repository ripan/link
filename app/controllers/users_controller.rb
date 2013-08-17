class UsersController < ApplicationController
  layout "profile"
  before_filter :require_login
  
  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  
  def contacts
    @user = current_user
    @contacts = request.env['omnicontacts.contacts']
    respond_to do |format|
      flash[:notice] = "Gmail contacts successfully imported"
      format.html {render :action => "show"}
    end
  end
  
end
