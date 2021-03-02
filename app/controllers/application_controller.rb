class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!

	include Pundit

	rescue_from Pundit::NotAuthorizedError,
              with: :user_not_authorized

	protected
		
	  def configure_permitted_parameters
		  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
		    user_params.permit(:name, :email, :password, :password_confirmation,
		    	                 { address: [:phone_no, :line, :street, :city, :state, :pin_code]})
		  end
		end

		def user_not_authorized(exception)
	    flash[:notice] = "You are not authorized to perform this action."
    	redirect_to profile_users_path
	  end
end
