class UsersController < ApplicationController
  def new
  end

  def create
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def set_params
    params.require(:user).permit(:first_name, :email, :password)
  end
end
