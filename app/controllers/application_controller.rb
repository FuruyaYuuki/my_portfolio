class ApplicationController < ActionController::Base
  # if devise無しだと全コントローラーに適応される
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  # Spotify APIにアクセス
  require 'rspotify'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])
  
  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :avatar])
  end
  
end