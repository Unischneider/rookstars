class UsersController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  private
  def set_params
    params.require(:user).permit(:first_name, :email, :password)
  end
end
