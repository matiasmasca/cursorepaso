class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :surname, :phone, :address])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :surname, :phone, :address])
  end

  def after_sign_in_path_for(resource)
    if current_user.user_type == "admin"
      edit_user_registration_path(current_user)
    else
      root_path
    end
  end

end
