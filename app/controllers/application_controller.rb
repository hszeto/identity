class ApplicationController < ActionController::Base
  # Devise: to redirect user after OAuth/Doorkeeper login
  def after_sign_in_path_for(_resource)
    session[:previous_url] || home_path
  end

  # Cancancan
  def access_denied(exception)
    redirect_to home_path, alert: exception.message
  end
end
