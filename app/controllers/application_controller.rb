class ApplicationController < ActionController::Base

#    before_action :configure_permitted_parameters, if: :devise_controller?

    def authenticate_admin!
        if !current_user
            redirect_to new_user_session_path, notice: "You need to log in as an admin"
        elsif !current_user.admin?
            redirect_to root_path, notice: "you are not an admin"
        end
    end

 #   protected
#
 #   def configure_permitted_parameters
 #       devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar])
 #   end  

end
