class Organizations::RegistrationsController < Devise::RegistrationsController
  include Accessible
  private

  def sign_up_params
    params.require(:organization).permit(:name, :description, :location, :website, :photo, :email, :password, :password_confirmation)
  end
end
