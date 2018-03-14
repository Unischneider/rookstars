class Users::RegistrationsController < Devise::RegistrationsController
  # after_action :add_photo, only: [:create]

  private

  # def add_photo
  #   if current_user.remote_photo_url.nil?
  #     current_user.remote_photo_url = "http://res.cloudinary.com/jules/image/upload/v1520336238/placeholder.jpg"
  #     current_user.save
  #   end
  # end

  def sign_up_params
    params.require(:user).permit(:first_name,:last_name, :linkedin, :photo, :about_me, :email, :password, :password_confirmation)
  end
end
