class UsersController < ApplicationController
  def index
    @team = Team.find(params[:team_id])
    if params[:email]
      @user = policy_scope(User).find_by_email(params[:email])
      @team_member = TeamMember.create(user: @user, team: @team)
    end
    respond_to do |format|
      format.js
    end
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
    params.require(:user).permit(:first_name, :email, :password, :term)
  end
end
