class Users::RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:first_name, :photo, :about_me, :email, :password, :password_confirmation)
  end
end
