class ApplicationController < ActionController::Base
	before_action :authenticate_user!
  protect_from_forgery with: :exception
  #load_and_authorize_resource
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, notice: exception.message 
  end
end
