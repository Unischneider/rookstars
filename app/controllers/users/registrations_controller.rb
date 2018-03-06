class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super
    if current_user.photo.file.nil?
      current_user.photo = "placeholder"
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :photo, :about_me, :email, :password, :password_confirmation)
  end
end
