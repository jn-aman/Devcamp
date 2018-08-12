class ApplicationController < ActionController::Base
before_action :set_source,:config_dev,if: :devise_controller?
def config_dev
	devise_parameter_sanitizer.permit(:sign_up,keys: [:name])
	devise_parameter_sanitizer.permit(:account_update,keys: [:name])
	end

def set_source
    session[:source] = params[:q] if params[:q]
  end
end
