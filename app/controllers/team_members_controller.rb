class TeamMembersController < ApplicationController
  def new
    @team = Team.find(params[:team_id])
    @team_member = TeamMember.new
    @members = []
    5.times do
      @members << TeamMember.new
    end
    authorize @team_member
  end

  def create
    @team = Team.find(params[:team_id])
    @team_member = TeamMember.new(set_params)
    authorize @team_member
    if @team_member.save
      render team_path(@team)
    else
      render :new
    end
  end

  private

  def team_params
    params.require(:team).permit(:about_us)
  end

  def set_params
    params.require(:team_member).permit(:user_id, :team_id, :lead_dev)
  end
end
