class ContactsController < ApplicationController
  layout "profile"
  before_filter :require_login
  
  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = current_user.contacts.paginate(:page => params[:page], :per_page => 30)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contacts }
    end
  end  
  
  def import_contacts
    @contacts = request.env['omnicontacts.contacts']
    
    @contacts.each do |contact|
    current_user.contacts.create(:name => contact[:name], :email => contact[:email])
    end
    
    respond_to do |format|
      format.html { redirect_to user_contacts_url(current_user) }
      format.json { head :no_content }
    end
    
  end
  
end
