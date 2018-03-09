class TeamMembersController < ApplicationController
  def new
    @team = Team.find(params[:team_id])
    @team_member = TeamMember.new
    @users = User.all.where(email: params[:email])
    authorize @team_member
  end

  def create
    @team = Team.find(params[:team_id])
    if params[:email]
      @user = policy_scope(User).find_by_email(params[:email])
      @team_member = TeamMember.create(user: @user, team: @team)
      authorize @team_member
    end
    @team_members = @team.team_members
    @current = current_user
    respond_to do |format|
      format.js
    end
  end

  def edit
  end

  private

  def team_params
    params.require(:team).permit(:about_us)
  end

  # def team_member_params
  #   params.require(:team_member).permit(:lead_dev)
  # end

  def user_params
    params[:team_members].permit(:users).require(:first_name, :email)
  end

end
