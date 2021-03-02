class RegistrationsController < Devise::RegistrationsController

  def new
    @user = User.new
    @user.address = Address.new
  end

  protected

    def sign_up_params
      params.require(:user).permit!
    end
  
end 