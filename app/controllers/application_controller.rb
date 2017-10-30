class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # This method from devise will prohibit users from seeing certain pages 
  # and actions if they are not logged in
  before_action :authenticate_user!
end
