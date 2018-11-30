class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(name introduction sex icon sport))
    devise_parameter_sanitizer.permit(:sign_in, keys: %i(email,password))
    devise_parameter_sanitizer.permit(:account_update, keys: %i(name introduction sex icon sport number group))
  end

  def after_sign_in_path_for(resource)
    case resource
      when User
        current_user
      when Organizer
        current_organizer
    end
  end

  def after_update_path_for(resource)
    case resource
      when User
        current_user
      when Organizer
        current_organizer
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
