class UsersController < ApplicationController
  def new
  end

  def create
  end

  def show
    @user = User.find(params[:id])
    # @team_members = TeamMember.where(user: @user)
    # @team_members.each do |team|
    #   @apps =  Application.select(team_id: team.id)
    # end
    authorize @user
  end

  private
  def set_params
    params.require(:user).permit(:first_name, :email, :password)
  end
end
