class TeamMembersController < ApplicationController
  def new
    @team = Team.find(params[:team_id])
    @team_member = TeamMember.new
    authorize @team_member
  end

  def create
    @team = Team.find(params[:team_id])
    @user = User.find_by_email(params[:team_member][:users][:email]) || User.create(email: params[:team_member][:users][:email], password: "secret", first_name: params[:team_member][:users][:first_name])
    @team_member = TeamMember.new(lead_dev: team_member_params[:lead_dev])
    @team_member.team = @team
    @team_member.user = @user
    p @team_member
    p team_member_params
    authorize @team_member
    if @team_member.save
      render team_path(@team)
    else
      p @team_member.errors.messages
      render :new
    end
  end

  private

  def team_params
    params.require(:team).permit(:about_us)
  end

  def team_member_params
    params.require(:team_member).permit(:lead_dev)
  end
end
