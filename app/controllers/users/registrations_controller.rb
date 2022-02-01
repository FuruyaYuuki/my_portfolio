class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_account_update_params, only: [:update]
  
  def create
    super
    WelcomeMailer.with(user: @user).welcome_email.deliver_later
  end

  private
  
  def update_resource(resource, params)
    resource.update_without_password(params)
    root_path
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :avatar])
  end
end