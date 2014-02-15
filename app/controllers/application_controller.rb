class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include :session

  helper_method :signed_in?
end
