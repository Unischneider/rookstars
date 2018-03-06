class Users::RegistrationsController < Devise::RegistrationsController
  include Accessible
  private

  def sign_up_params
    params.require(:user).permit(:first_name, :photo, :email, :password, :password_confirmation)
  end
end
