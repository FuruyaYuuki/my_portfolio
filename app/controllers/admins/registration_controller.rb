class Admins::RegistrationsController < Devise::RegistrationsController
  before_action :configure_account_update_params, only: [:update]

  private
  
  def update_resource(resource, params)
    resource.update_without_password(params)
    root_path
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :avatar])
  end
end