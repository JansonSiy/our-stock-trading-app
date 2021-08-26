class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    # you need this to permit the usage of the added keys in devise, so it's not 'nil' and for the validation of the model
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role_type, :credit])
    end
end