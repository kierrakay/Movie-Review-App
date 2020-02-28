class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?

    protected



  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end


#   def require_login
#     unless current_user
#       redirect_to root_url
#     end
#   end

#   def admin_only
#     unless current_user.admin
#       flash[:notice] = "You must be an admin to perform that function!"
#       redirect_to user_path(current_user)
#     end
#   end


