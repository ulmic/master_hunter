class ApplicationController < ActionController::Base
  include Concerns::AuthManagment

  protect_from_forgery with: :exception
  helper_method :signed_in?, :current_user
end
