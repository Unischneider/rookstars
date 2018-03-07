class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super
    if current_user.photo.file.nil?
      current_user.remote_photo_url = "http://res.cloudinary.com/jules/image/upload/v1520336238/placeholder.jpg"
      current_user.save
      binding.pry
    else
      binding.pry
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :photo, :about_me, :email, :password, :password_confirmation)
  end
end
